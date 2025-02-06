import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hani/core/router/route_path.dart';

import '../../features/auth/presentation/pages/home.page.dart';
import '../../features/auth/presentation/pages/home_drawer.page.dart';
import '../../features/auth/presentation/pages/login.page.dart';
import '../../features/auth/presentation/pages/sign_up.page.dart';
import '../../features/budget/presentation/pages/add_update_budget.page.dart';
import '../../features/budget/presentation/pages/budget.page.dart';
import '../../features/category/presentation/pages/category.page.dart';
import '../../features/category/presentation/pages/category_form.page.dart';
import '../../features/dashboard/presentation/pages/dashboard.page.dart';
import '../../features/expenses/presentation/pages/add_update_expense.page.dart';
import '../../features/expenses/presentation/pages/expense.page.dart';
import '../../features/income/presentation/pages/add_update_income.page.dart';
import '../../features/income/presentation/pages/income.page.dart';
import '../../features/tag/presentation/pages/tag.page.dart';
import '../../features/tag/presentation/pages/tag_form.page.dart';
import '../../features/wallet/presentation/pages/money_tracker.page.dart';
import '../../features/wallet/presentation/pages/start_tracker.page.dart';
import '../../features/wallet/presentation/pages/wallet_form.page.dart';
import '../../features/wallet/presentation/pages/wallet_loading.page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: LoginRoute.page,
          path: RoutePath.loginRoute,
          initial: true,
        ),
        AutoRoute(
          page: SignUpRoute.page,
          path: RoutePath.signUpRoute,
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: RoutePath.homeRoute,
        ),
        CustomRoute(
          page: HomeDrawerRoute.page,
          path: RoutePath.homeDrawerRoute,
          transitionsBuilder: TransitionsBuilders.slideRight,
        ),
        AutoRoute(
            page: MoneyTrackerRoute.page,
            path: RoutePath.moneyTrackerRoute,
            children: [
              AutoRoute(
                page: DashboardRoute.page,
                path: RoutePath.dashboardRoute,
                initial: true,
              ),
              AutoRoute(
                page: IncomeRoute.page,
                path: RoutePath.incomeRoute,
              ),
              AutoRoute(
                page: ExpenseRoute.page,
                path: RoutePath.expenseRoute,
              ),
              AutoRoute(
                page: BudgetRoute.page,
                path: RoutePath.budgetRoute,
              ),
            ]),
        AutoRoute(
          page: StartTrackerRoute.page,
          path: RoutePath.startTrackerRoute,
        ),
        AutoRoute(
          page: AddUpdateBudgetRoute.page,
          path: RoutePath.addUpdateBudgetRoute,
        ),
        AutoRoute(
          page: AddUpdateIncomeRoute.page,
          path: RoutePath.addUpdateIncomeRoute,
        ),
        AutoRoute(
          page: AddUpdateExpenseRoute.page,
          path: RoutePath.addUpdateExpenseRoute,
        ),
        AutoRoute(
          page: WalletFormRoute.page,
          path: RoutePath.walletFormRoute,
        ),
        AutoRoute(
          page: TagRoute.page,
          path: RoutePath.tagRoute,
        ),
        AutoRoute(
          page: TagFormRoute.page,
          path: RoutePath.tagFormRoute,
        ),
        AutoRoute(
          page: WalletLoadingRoute.page,
          path: RoutePath.walletLoadingRoute,
        ),
        AutoRoute(
          page: CategoryRoute.page,
          path: RoutePath.categoryRoute,
        ),
        AutoRoute(
          page: CategoryFormRoute.page,
          path: RoutePath.categoryFormRoute,
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
