import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/features/monthly_record/data/dto/create_monthly_record.dto.dart';
import 'package:hani/features/monthly_record/data/repositories/monthly_record.repository.dart';
import 'package:hani/features/monthly_record/domain/entities/monthly_record.entity.dart';
import 'package:hani/features/monthly_record/domain/vo/create_monthly_record.vo.dart';
import 'package:injectable/injectable.dart';

part 'monthly_record_event.dart';
part 'monthly_record_state.dart';
part 'monthly_record_bloc.freezed.dart';

@lazySingleton
class MonthlyRecordBloc extends Bloc<MonthlyRecordEvent, MonthlyRecordState> {
  MonthlyRecordBloc(MonthlyRecordRepository monthlyRecordRepository)
      : super(MonthlyRecordState.initial()) {
    on<_GetMonthlyRecords>((event, emit) async {
      emit(MonthlyRecordState.loading(state));

      final result =
          await monthlyRecordRepository.getMonthlyRecords(event.walletIds);

      if (result.isFailure) {
        emit(MonthlyRecordState.error(state, result.getError));
        emit(MonthlyRecordState.loaded(state));
      }

      emit(MonthlyRecordState.saveMonthlyRecords(state, result.getValue));
      emit(MonthlyRecordState.loaded(state));
    });

    on<_CreateMonthlyRecord>((event, emit) async {
      emit(MonthlyRecordState.loading(state));

      final voOrError = CreateMonthlyRecordVo.create(event.dto);

      if (voOrError.isFailure) {
        emit(MonthlyRecordState.error(state, voOrError.getError));
        emit(MonthlyRecordState.loaded(state));
        return;
      }

      final result =
          await monthlyRecordRepository.createMonthlyRecord(voOrError.getValue);

      if (result.isFailure) {
        emit(MonthlyRecordState.error(state, result.getError));
        emit(MonthlyRecordState.loaded(state));
      }

      emit(MonthlyRecordState.addMonthlyRecord(state, result.getValue));
      emit(MonthlyRecordState.success(state, 'Record has been created!'));
      emit(MonthlyRecordState.loaded(state));
    });
  }
}
