class BudgetLinearIndicatorParam {
  final String label;
  final double budget;
  final double expenses;
  final DateTime? from;
  final DateTime? to;

  BudgetLinearIndicatorParam(
      {this.label = '',
      this.budget = 0,
      this.expenses = 0,
      this.from,
      this.to});
}

class BudgetParams {
  final List<BudgetLinearIndicatorParam>? budgetList;
  final Future<void> Function()? onRefresh;
  final void Function()? addOnPressed;

  BudgetParams({
    this.budgetList,
    this.onRefresh,
    this.addOnPressed,
  });
}
