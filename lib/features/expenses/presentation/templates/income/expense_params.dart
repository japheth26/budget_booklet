class ExpenseItemParam {
  final String faIconName;
  final String title;
  final String leftSubtitle;
  final String rightSubtitle;
  final void Function()? onTap;

  ExpenseItemParam(
      {this.faIconName = '',
      this.title = '',
      this.leftSubtitle = '',
      this.rightSubtitle = '',
      this.onTap});
}

class ExpenseParams {
  final void Function()? addOnPressed;
  final List<ExpenseItemParam>? expenseItemParams;
  final String? totalExpensesValue;
  final Future<void> Function()? onRefresh;

  ExpenseParams({
    this.addOnPressed,
    this.expenseItemParams,
    this.totalExpensesValue,
    this.onRefresh,
  });
}
