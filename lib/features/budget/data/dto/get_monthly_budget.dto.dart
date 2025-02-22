class GetMonthlyBudgetDto {
  final String? walletId;
  final DateTime? from;
  final DateTime? to;

  GetMonthlyBudgetDto({this.walletId, this.from, this.to});
}
