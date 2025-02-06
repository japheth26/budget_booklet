class IncomeItemParam {
  final String faIconName;
  final String title;
  final String leftSubtitle;
  final String rightSubtitle;
  final void Function()? onTap;

  IncomeItemParam(
      {this.faIconName = '',
      this.title = '',
      this.leftSubtitle = '',
      this.rightSubtitle = '',
      this.onTap});
}

class IncomeParams {
  final void Function()? addOnPressed;
  final List<IncomeItemParam>? incomeItemParams;
  final String? totalIncomeValue;
  final Future<void> Function()? onRefresh;

  IncomeParams({
    this.addOnPressed,
    this.incomeItemParams,
    this.totalIncomeValue,
    this.onRefresh,
  });
}
