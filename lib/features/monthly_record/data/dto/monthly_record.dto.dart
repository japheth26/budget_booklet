import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_record.dto.freezed.dart';
part 'monthly_record.dto.g.dart';

@freezed
class MonthlyRecordDto with _$MonthlyRecordDto {
  const factory MonthlyRecordDto({
    String? recordId,
    String? walletId,
    double? initialAmount,
    double? spendingAmount,
    double? savingAmount,
    double? income,
    double? expense,
    double? budget,
    double? unbudgeted,
    String? goal,
    String? plan,
    int? month,
    int? year,
  }) = _MonthlyRecordDto;

  const MonthlyRecordDto._();

  factory MonthlyRecordDto.fromJson(json) => _$MonthlyRecordDtoFromJson(json);
}
