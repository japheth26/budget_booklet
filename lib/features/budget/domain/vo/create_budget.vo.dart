import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/budget/data/dto/create_budget.dto.dart';

part 'create_budget.vo.freezed.dart';
part 'create_budget.vo.g.dart';

@freezed
@JsonSerializable(createFactory: false)
class CreateBudgetVo with _$CreateBudgetVo {
  factory CreateBudgetVo({
    required String walletId,
    required String name,
    required double amount,
    required String from,
    required String to,
    String? notes,
  }) = _CreateBudgetVo;

  const CreateBudgetVo._();

  Map<String, dynamic> toJson() => _$CreateBudgetVoToJson(this);

  static Result<CreateBudgetVo> create(CreateBudgetDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstEmptyString('Budget Name', dto.name),
      Guard.againstInvalidDouble('Amount', dto.amount),
      Guard.againstUndefined('Date From', dto.from),
      Guard.againstUndefined('Date To', dto.to),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = CreateBudgetVo(
      walletId: dto.walletId!,
      name: dto.name!,
      amount: dto.amount!,
      from: dto.from!.toIso8601String(),
      to: dto.to!.toIso8601String(),
    );

    return Result.ok(data: data);
  }
}
