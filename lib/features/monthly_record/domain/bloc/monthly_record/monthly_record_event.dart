part of 'monthly_record_bloc.dart';

@freezed
class MonthlyRecordEvent with _$MonthlyRecordEvent {
  const factory MonthlyRecordEvent.getMonthlyRecords(
      {required List<String> walletIds}) = _GetMonthlyRecords;

  const factory MonthlyRecordEvent.createMonthlyRecord(
      {required CreateMonthlyRecordDto dto}) = _CreateMonthlyRecord;
}
