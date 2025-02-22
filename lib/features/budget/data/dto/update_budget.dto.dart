class UpdateBudgetDto {
  final String? budgetId;
  final String? name;
  final double? amount;
  final DateTime? from;
  final DateTime? to;
  final String? notes;

  UpdateBudgetDto(
    this.budgetId,
    this.name,
    this.amount,
    this.from,
    this.to,
    this.notes,
  );
}
