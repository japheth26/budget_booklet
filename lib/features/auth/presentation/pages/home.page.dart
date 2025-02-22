import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/core/widgets/dialog/global_dialog.dart';
import 'package:hani/features/auth/domain/bloc/auth/auth_bloc.dart';
import 'package:hani/features/auth/presentation/templates/home/home_params.dart';
import 'package:hani/features/auth/presentation/templates/home/home_template.dart';
import 'package:hani/features/monthly_record/domain/bloc/monthly_record/monthly_record_bloc.dart';
import 'package:hani/features/wallet/domain/bloc/wallet/wallet_bloc.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late StackRouter _router;
  late AuthBloc _authBloc;
  late WalletBloc _walletBloc;
  late MonthlyRecordBloc _monthlyRecordBloc;

  late String _userId;

  @override
  void initState() {
    super.initState();
    _router = AutoRouter.of(context);
    _authBloc = getIt<AuthBloc>();
    _walletBloc = getIt<WalletBloc>();
    _monthlyRecordBloc = getIt<MonthlyRecordBloc>();

    _userId = _authBloc.state.authUserEntity!.userId;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fixUnassignedWallets();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener(bloc: _authBloc, listener: _handleAuthListener),
        BlocListener(bloc: _walletBloc, listener: _handleWalletListener),
      ],
      child: BlocBuilder<WalletBloc, WalletState>(
        bloc: _walletBloc,
        builder: (context, walletState) {
          return BlocBuilder<MonthlyRecordBloc, MonthlyRecordState>(
            bloc: _monthlyRecordBloc,
            builder: (context, monthlyRecordState) {
              return HomeTemplate(
                params: HomeParams(
                    onRefresh: _handleOnRefresh,
                    loading: walletState.stateStatus == StateStatus.loading ||
                        monthlyRecordState.stateStatus == StateStatus.loading,
                    drawerOnPressed: () {
                      _router.push(const HomeDrawerRoute());
                    },
                    homeItemParams: [
                      ...walletState.wallets.map((e) {
                        final monthlyRecord = monthlyRecordState
                            .monthlyRecordsByWalletId[e.walletId];
                        final initialAmount = monthlyRecord?.initialAmount ?? 0;
                        final income = monthlyRecord?.income ?? 0;
                        final expense = monthlyRecord?.expense ?? 0;

                        return HomeItemParam(
                          name: e.name,
                          balance: ((initialAmount + income) - expense)
                              .toStringAsFixed(2),
                          walletNumber: e.walletId,
                          pieChartDataList: [
                            HomePieChartData(
                              color: Colors.green,
                              value: income,
                            ),
                            HomePieChartData(
                              color: Colors.yellow,
                              value: initialAmount,
                            ),
                            HomePieChartData(
                              color: Colors.red,
                              value: expense,
                            )
                          ],
                          onTap: () {
                            _handleOnSelectWallet(e);
                          },
                        );
                      }),
                    ],
                    addOnPressed: () {
                      _router.push(WalletFormRoute());
                    }),
              );
            },
          );
        },
      ),
    );
  }

  void _handleAuthListener(BuildContext context, AuthState state) {
    if (!state.proceedToLogout) {
      _router.maybePop();
    }
  }

  void _handleWalletListener(BuildContext context, WalletState state) {
    if (state.stateStatus == StateStatus.error) {
      GlobalDialog.showErrorDialog(context, message: state.errorMessage);
    }

    if (state.stateStatus == StateStatus.success) {
      GlobalDialog.showSuccessDialog(context, message: state.successMessage);
    }

    if (state.unassignedWalletsFixed) {
      _getWallets();
    }

    if (state.walletsRetrieved) {
      final walletIds =
          _walletBloc.state.wallets.map((e) => e.walletId).toList();
      _monthlyRecordBloc
          .add(MonthlyRecordEvent.getMonthlyRecords(walletIds: walletIds));
    }
  }

  Future<void> _handleOnRefresh() async {
    _getWallets();
  }

  void _getWallets() {
    _walletBloc.add(WalletEvent.getWallets(userId: _userId));
  }

  void _fixUnassignedWallets() {
    _walletBloc.add(WalletEvent.fixAssignedWallets(userId: _userId));
  }

  void _handleOnSelectWallet(WalletEntity wallet) {
    final monthlyRecord =
        _monthlyRecordBloc.state.monthlyRecordsByWalletId[wallet.walletId];

    if (monthlyRecord != null) {
      _router.push(WalletLoadingRoute(walletId: wallet.walletId));
    } else {
      _router.push(WalletFormRoute(wallet: wallet, createRecordOnly: true));
    }
  }
}
