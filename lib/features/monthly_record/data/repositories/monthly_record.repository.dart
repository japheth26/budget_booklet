import 'package:hani/features/monthly_record/data/dto/monthly_record.dto.dart';
import 'package:hani/features/monthly_record/domain/entities/monthly_record.entity.dart';
import 'package:hani/features/monthly_record/domain/vo/create_monthly_record.vo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/result/result.dart';
import '../../../../core/state_status/error_messages.dart';
import '../datasources/monthly_record_remote.datasource.dart';

@lazySingleton
class MonthlyRecordRepository {
  late Logger _logger;
  late MonthlyRecordRemoteDatasource _monthlyRecordRemoteDatasource;

  MonthlyRecordRepository(
    Logger logger,
    MonthlyRecordRemoteDatasource monthlyRecordRemoteDatasource,
  ) {
    _logger = logger;
    _monthlyRecordRemoteDatasource = monthlyRecordRemoteDatasource;
  }

  Future<Result<List<MonthlyRecordEntity>>> getMonthlyRecords(
      List<String> walletIds) async {
    try {
      final List<MonthlyRecordEntity> records = [];

      final dtos =
          await _monthlyRecordRemoteDatasource.getMonthlyRecords(walletIds);

      for (final dto in dtos) {
        final entityOrError = MonthlyRecordEntity.create(dto);

        if (entityOrError.isFailure) {
          _logger.e(entityOrError.getError);
          continue;
        }

        records.add(entityOrError.getValue);
      }

      return Result.ok(data: records);
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<MonthlyRecordEntity>> createMonthlyRecord(
      CreateMonthlyRecordVo vo) async {
    try {
      late MonthlyRecordDto dto;

      final existing = await _monthlyRecordRemoteDatasource.getMonthlyRecord(
          vo.walletId, vo.month, vo.year);

      if (existing != null) {
        return const Result.fail(error: 'Record is already exists!');
      }
      dto = await _monthlyRecordRemoteDatasource.createMonthlyRecord(vo);

      return MonthlyRecordEntity.create(dto);
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }
}
