part of 'monthly_record_bloc.dart';

@freezed
class MonthlyRecordState with _$MonthlyRecordState {
  const factory MonthlyRecordState({
    required StateStatus stateStatus,
    required String errorMessage,
    required String successMessage,
    required Map<String, MonthlyRecordEntity> monthlyRecordsByWalletId,
  }) = _MonthlyRecordState;

  factory MonthlyRecordState.initial() => const MonthlyRecordState(
        stateStatus: StateStatus.initial,
        errorMessage: '',
        successMessage: '',
        monthlyRecordsByWalletId: {},
      );

  factory MonthlyRecordState.loading(MonthlyRecordState state) =>
      state.copyWith(stateStatus: StateStatus.loading);

  factory MonthlyRecordState.loaded(MonthlyRecordState state) =>
      state.copyWith(stateStatus: StateStatus.loaded);

  factory MonthlyRecordState.error(
          MonthlyRecordState state, String errorMessage) =>
      state.copyWith(
          stateStatus: StateStatus.error, errorMessage: errorMessage);

  factory MonthlyRecordState.success(
          MonthlyRecordState state, String successMessage) =>
      state.copyWith(
          stateStatus: StateStatus.success, successMessage: successMessage);

  factory MonthlyRecordState.saveMonthlyRecords(
      MonthlyRecordState state, List<MonthlyRecordEntity> records) {
    final Map<String, MonthlyRecordEntity> monthlyRecords =
        records.asMap().map((index, record) {
      return MapEntry(record.walletId, record);
    });

    return state.copyWith(monthlyRecordsByWalletId: monthlyRecords);
  }

  factory MonthlyRecordState.addMonthlyRecord(
      MonthlyRecordState state, MonthlyRecordEntity record) {
    final monthlyRecords = {...state.monthlyRecordsByWalletId};

    monthlyRecords[record.walletId] = record;

    return state.copyWith(monthlyRecordsByWalletId: monthlyRecords);
  }
}
