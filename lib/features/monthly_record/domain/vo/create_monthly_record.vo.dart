import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/monthly_record/data/dto/create_monthly_record.dto.dart';

part 'create_monthly_record.vo.freezed.dart';
part 'create_monthly_record.vo.g.dart';

@freezed
@JsonSerializable(createFactory: false)
class CreateMonthlyRecordVo with _$CreateMonthlyRecordVo {
  const factory CreateMonthlyRecordVo({
    required String walletId,
    required double initialAmount,
    required double spendingAmount,
    required double savingAmount,
    required String goal,
    required String plan,
    required int month,
    required int year,
  }) = _CreateMonthlyRecordVo;

  const CreateMonthlyRecordVo._();

  Map<String, dynamic> toJson() => _$CreateMonthlyRecordVoToJson(this);

  static Result<CreateMonthlyRecordVo> create(CreateMonthlyRecordDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstInvalidDouble('Initial Amount', dto.initialAmount),
      Guard.againstInvalidDouble('Spending Amount', dto.spendingAmount),
      Guard.againstInvalidDouble('Saving Amount', dto.savingAmount),
      Guard.againstInvalidInteger('Month', dto.month),
      Guard.againstInvalidInteger('Year', dto.year),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = CreateMonthlyRecordVo(
      walletId: dto.walletId!,
      initialAmount: dto.initialAmount!,
      spendingAmount: dto.spendingAmount!,
      savingAmount: dto.savingAmount!,
      goal: dto.goal ?? '',
      plan: dto.plan ?? '',
      month: dto.month!,
      year: dto.year!,
    );

    return Result.ok(data: data);
  }
}
