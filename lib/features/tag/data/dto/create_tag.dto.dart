class CreateTagDto {
  final String? label;
  final int? color;
  final String? walletId;
  final String? transactionType;
  final String? createdBy;

  CreateTagDto({
    this.label,
    this.color,
    this.walletId,
    this.transactionType,
    this.createdBy,
  });
}
