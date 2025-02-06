// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddUpdateBudgetPage]
class AddUpdateBudgetRoute extends PageRouteInfo<AddUpdateBudgetRouteArgs> {
  AddUpdateBudgetRoute({
    Key? key,
    String? budgetId,
    List<PageRouteInfo>? children,
  }) : super(
          AddUpdateBudgetRoute.name,
          args: AddUpdateBudgetRouteArgs(
            key: key,
            budgetId: budgetId,
          ),
          initialChildren: children,
        );

  static const String name = 'AddUpdateBudgetRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddUpdateBudgetRouteArgs>(
          orElse: () => const AddUpdateBudgetRouteArgs());
      return AddUpdateBudgetPage(
        key: args.key,
        budgetId: args.budgetId,
      );
    },
  );
}

class AddUpdateBudgetRouteArgs {
  const AddUpdateBudgetRouteArgs({
    this.key,
    this.budgetId,
  });

  final Key? key;

  final String? budgetId;

  @override
  String toString() {
    return 'AddUpdateBudgetRouteArgs{key: $key, budgetId: $budgetId}';
  }
}

/// generated route for
/// [AddUpdateExpensePage]
class AddUpdateExpenseRoute extends PageRouteInfo<void> {
  const AddUpdateExpenseRoute({List<PageRouteInfo>? children})
      : super(
          AddUpdateExpenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddUpdateExpenseRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddUpdateExpensePage();
    },
  );
}

/// generated route for
/// [AddUpdateIncomePage]
class AddUpdateIncomeRoute extends PageRouteInfo<void> {
  const AddUpdateIncomeRoute({List<PageRouteInfo>? children})
      : super(
          AddUpdateIncomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddUpdateIncomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddUpdateIncomePage();
    },
  );
}

/// generated route for
/// [BudgetPage]
class BudgetRoute extends PageRouteInfo<void> {
  const BudgetRoute({List<PageRouteInfo>? children})
      : super(
          BudgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'BudgetRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BudgetPage();
    },
  );
}

/// generated route for
/// [CategoryFormPage]
class CategoryFormRoute extends PageRouteInfo<void> {
  const CategoryFormRoute({List<PageRouteInfo>? children})
      : super(
          CategoryFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CategoryFormPage();
    },
  );
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    Key? key,
    required String transactionType,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryRoute.name,
          args: CategoryRouteArgs(
            key: key,
            transactionType: transactionType,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CategoryRouteArgs>();
      return CategoryPage(
        key: args.key,
        transactionType: args.transactionType,
      );
    },
  );
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.key,
    required this.transactionType,
  });

  final Key? key;

  final String transactionType;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, transactionType: $transactionType}';
  }
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardPage();
    },
  );
}

/// generated route for
/// [ExpensePage]
class ExpenseRoute extends PageRouteInfo<void> {
  const ExpenseRoute({List<PageRouteInfo>? children})
      : super(
          ExpenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpenseRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ExpensePage();
    },
  );
}

/// generated route for
/// [HomeDrawerPage]
class HomeDrawerRoute extends PageRouteInfo<void> {
  const HomeDrawerRoute({List<PageRouteInfo>? children})
      : super(
          HomeDrawerRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeDrawerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeDrawerPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [IncomePage]
class IncomeRoute extends PageRouteInfo<void> {
  const IncomeRoute({List<PageRouteInfo>? children})
      : super(
          IncomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'IncomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const IncomePage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [MoneyTrackerPage]
class MoneyTrackerRoute extends PageRouteInfo<void> {
  const MoneyTrackerRoute({List<PageRouteInfo>? children})
      : super(
          MoneyTrackerRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoneyTrackerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MoneyTrackerPage();
    },
  );
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignUpPage();
    },
  );
}

/// generated route for
/// [StartTrackerPage]
class StartTrackerRoute extends PageRouteInfo<void> {
  const StartTrackerRoute({List<PageRouteInfo>? children})
      : super(
          StartTrackerRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartTrackerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StartTrackerPage();
    },
  );
}

/// generated route for
/// [TagFormPage]
class TagFormRoute extends PageRouteInfo<TagFormRouteArgs> {
  TagFormRoute({
    Key? key,
    String? tagId,
    required String transactionType,
    List<PageRouteInfo>? children,
  }) : super(
          TagFormRoute.name,
          args: TagFormRouteArgs(
            key: key,
            tagId: tagId,
            transactionType: transactionType,
          ),
          initialChildren: children,
        );

  static const String name = 'TagFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TagFormRouteArgs>();
      return TagFormPage(
        key: args.key,
        tagId: args.tagId,
        transactionType: args.transactionType,
      );
    },
  );
}

class TagFormRouteArgs {
  const TagFormRouteArgs({
    this.key,
    this.tagId,
    required this.transactionType,
  });

  final Key? key;

  final String? tagId;

  final String transactionType;

  @override
  String toString() {
    return 'TagFormRouteArgs{key: $key, tagId: $tagId, transactionType: $transactionType}';
  }
}

/// generated route for
/// [TagPage]
class TagRoute extends PageRouteInfo<TagRouteArgs> {
  TagRoute({
    Key? key,
    required String transactionType,
    List<PageRouteInfo>? children,
  }) : super(
          TagRoute.name,
          args: TagRouteArgs(
            key: key,
            transactionType: transactionType,
          ),
          initialChildren: children,
        );

  static const String name = 'TagRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TagRouteArgs>();
      return TagPage(
        key: args.key,
        transactionType: args.transactionType,
      );
    },
  );
}

class TagRouteArgs {
  const TagRouteArgs({
    this.key,
    required this.transactionType,
  });

  final Key? key;

  final String transactionType;

  @override
  String toString() {
    return 'TagRouteArgs{key: $key, transactionType: $transactionType}';
  }
}

/// generated route for
/// [WalletFormPage]
class WalletFormRoute extends PageRouteInfo<void> {
  const WalletFormRoute({List<PageRouteInfo>? children})
      : super(
          WalletFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalletFormPage();
    },
  );
}

/// generated route for
/// [WalletLoadingPage]
class WalletLoadingRoute extends PageRouteInfo<WalletLoadingRouteArgs> {
  WalletLoadingRoute({
    Key? key,
    required String walletId,
    List<PageRouteInfo>? children,
  }) : super(
          WalletLoadingRoute.name,
          args: WalletLoadingRouteArgs(
            key: key,
            walletId: walletId,
          ),
          initialChildren: children,
        );

  static const String name = 'WalletLoadingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WalletLoadingRouteArgs>();
      return WalletLoadingPage(
        key: args.key,
        walletId: args.walletId,
      );
    },
  );
}

class WalletLoadingRouteArgs {
  const WalletLoadingRouteArgs({
    this.key,
    required this.walletId,
  });

  final Key? key;

  final String walletId;

  @override
  String toString() {
    return 'WalletLoadingRouteArgs{key: $key, walletId: $walletId}';
  }
}
