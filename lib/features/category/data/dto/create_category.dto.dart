class CreateCategoryDto {
  final String? walletId;
  final String? label;
  final int? icon;
  final String? transactionType;
  final String? createdBy;
  final int? color;

  CreateCategoryDto({
    this.walletId,
    this.label,
    this.icon,
    this.transactionType,
    this.createdBy,
    this.color,
  });
}
