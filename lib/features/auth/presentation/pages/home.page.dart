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
import 'package:hani/features/wallet/domain/bloc/wallet/wallet_bloc.dart';

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

  late String _userId;

  @override
  void initState() {
    super.initState();
    _router = AutoRouter.of(context);
    _authBloc = getIt<AuthBloc>();
    _walletBloc = getIt<WalletBloc>();

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
        builder: (context, state) {
          return HomeTemplate(
            params: HomeParams(
                onRefresh: _handleOnRefresh,
                loading: state.stateStatus == StateStatus.loading,
                drawerOnPressed: () {
                  _router.push(const HomeDrawerRoute());
                },
                homeItemParams: [
                  ...state.wallets.map((e) {
                    return HomeItemParam(
                      name: e.name,
                      balance: ((e.initial + e.income) - e.expense).toString(),
                      walletNumber: e.walletId,
                      pieChartDataList: [
                        HomePieChartData(
                          color: Colors.green,
                          value: e.income,
                        ),
                        HomePieChartData(
                          color: Colors.yellow,
                          value: e.initial,
                        ),
                        HomePieChartData(
                          color: Colors.red,
                          value: e.expense,
                        )
                      ],
                      onTap: () {
                        _router.push(WalletLoadingRoute(walletId: e.walletId));
                      },
                    );
                  }),
                ],
                addOnPressed: () {
                  _router.push(const WalletFormRoute());
                }),
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
}
