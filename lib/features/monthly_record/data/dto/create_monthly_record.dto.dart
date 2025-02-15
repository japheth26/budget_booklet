class CreateMonthlyRecordDto {
  final String? walletId;
  final double? initialAmount;
  final double? spendingAmount;
  final double? savingAmount;
  final String? goal;
  final String? plan;
  final int? month;
  final int? year;

  CreateMonthlyRecordDto({
    this.walletId,
    this.initialAmount,
    this.spendingAmount,
    this.savingAmount,
    this.goal,
    this.plan,
    this.month,
    this.year,
  });
}
