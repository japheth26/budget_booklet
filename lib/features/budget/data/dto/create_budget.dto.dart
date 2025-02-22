class CreateBudgetDto {
  final String? walletId;
  final String? name;
  final double? amount;
  final DateTime? from;
  final DateTime? to;
  final String? notes;

  CreateBudgetDto({
    this.walletId,
    this.name,
    this.amount,
    this.from,
    this.to,
    this.notes,
  });
}
