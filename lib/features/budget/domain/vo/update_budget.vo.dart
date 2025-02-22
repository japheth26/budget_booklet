import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/budget/data/dto/update_budget.dto.dart';

import '../../../../core/result/result.dart';

part 'update_budget.vo.freezed.dart';
part 'update_budget.vo.g.dart';

@freezed
@JsonSerializable(createFactory: false)
class UpdateBudgetVo with _$UpdateBudgetVo {
  factory UpdateBudgetVo({
    required String budgetId,
    required String name,
    required double amount,
    required String from,
    required String to,
    String? notes,
  }) = _UpdateBudgetVo;

  const UpdateBudgetVo._();

  Map<String, dynamic> toJson() => _$UpdateBudgetVoToJson(this);

  static Result<UpdateBudgetVo> create(UpdateBudgetDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Budget ID', dto.budgetId),
      Guard.againstEmptyString('Budget Name', dto.name),
      Guard.againstInvalidDouble('Amount', dto.amount),
      Guard.againstInvalidDate('Date From', dto.from),
      Guard.againstInvalidDate('Date To', dto.to),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = UpdateBudgetVo(
      budgetId: dto.budgetId!,
      name: dto.name!,
      amount: dto.amount!,
      from: dto.from!.toIso8601String(),
      to: dto.to!.toIso8601String(),
      notes: dto.notes,
    );

    return Result.ok(data: data);
  }
}
