import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget.dto.freezed.dart';
part 'budget.dto.g.dart';

@freezed
class BudgetDto with _$BudgetDto {
  factory BudgetDto({
    String? budgetId,
    String? walletId,
    String? name,
    double? amount,
    double? totalExpense,
    String? from,
    String? to,
    String? notes,
    bool? deleted,
    String? deletedBy,
  }) = _BudgetDto;

  BudgetDto._();

  factory BudgetDto.fromJson(Map<String, dynamic> json) =>
      _$BudgetDtoFromJson(json);
}
