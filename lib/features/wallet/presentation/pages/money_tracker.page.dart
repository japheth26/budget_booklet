import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/features/wallet/domain/bloc/wallet/wallet_bloc.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';
import 'package:hani/features/wallet/presentation/templates/money_tracker/money_tracker_params.dart';
import 'package:hani/features/wallet/presentation/templates/money_tracker/money_tracker_template.dart';

@RoutePage()
class MoneyTrackerPage extends StatefulWidget {
  const MoneyTrackerPage({super.key});

  @override
  State<MoneyTrackerPage> createState() => _MoneyTrackerPageState();
}

class _MoneyTrackerPageState extends State<MoneyTrackerPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TabsRouter _tabsRouter;
  late StackRouter _router;
  late GlobalKey<ScaffoldState> _endDrawerKey;

  late WalletBloc _walletBloc;
  late WalletEntity? _walletEntity;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
    _router = AutoRouter.of(context);
    _endDrawerKey = GlobalKey<ScaffoldState>();

    _walletBloc = getIt<WalletBloc>();
    _walletEntity = _walletBloc.state.selectedWallet;
  }

  @override
  void dispose() {
    super.dispose();

    _tabController.dispose();
    _endDrawerKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MoneyTrackerTemplate(
      moneyTrackerParams: MoneyTrackerParams(
        endDrawerKey: _endDrawerKey,
        name: _walletEntity?.name,
        walletNumber: '123 456 078',
        endDrawerOnPressed: () {
          _endDrawerKey.currentState?.openEndDrawer();
        },
        onBackPressed: () {
          _router.maybePop();
        },
      ),
      tabBarParams: MoneyTrackerTabBarParams(
        tabController: _tabController,
        tabLabels: ['Dashboard', 'Income', 'Expenses', 'Budget'],
        onTap: (index) {
          _tabsRouter.setActiveIndex(index);
        },
      ),
      autoTabRouterParams: MoneyTrackerAutoTabRouterParams(
        routes: [
          const DashboardRoute(),
          const IncomeRoute(),
          const ExpenseRoute(),
          const BudgetRoute(),
        ],
        tabsRouterInitialize: (tabsRouter) {
          _tabsRouter = tabsRouter;
        },
      ),
    );
  }
}
