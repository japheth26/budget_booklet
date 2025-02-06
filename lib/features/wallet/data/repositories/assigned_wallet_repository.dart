import 'package:hani/core/state_status/error_messages.dart';
import 'package:hani/features/wallet/data/datasources/assigned_wallet_remote_datasource.dart';
import 'package:hani/features/wallet/data/dto/assigned_wallet.dto.dart';
import 'package:hani/features/wallet/domain/entity/assigned_wallet.entity.dart';
import 'package:hani/features/wallet/domain/vo/create_assigned_wallet.vo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/result/result.dart';

@lazySingleton
class AssignedWalletRepository {
  late Logger _logger;
  late AssignedWalletRemoteDatasource _assignedWalletRemoteDatasource;

  AssignedWalletRepository(Logger logger,
      AssignedWalletRemoteDatasource assignedWalletRemoteDatasource) {
    _logger = logger;
    _assignedWalletRemoteDatasource = assignedWalletRemoteDatasource;
  }

  Future<Result<List<AssignedWalletEntity>>> getAssignedWallets(
      String userId) async {
    try {
      final result =
          await _assignedWalletRemoteDatasource.getAssignedWallets(userId);

      final List<AssignedWalletEntity> data = [];

      for (final doc in result.documents) {
        final entityOrError =
            AssignedWalletEntity.create(AssignedWalletDto.fromJson(doc.data));

        if (entityOrError.isFailure) {
          _logger.e(entityOrError.getError);
          continue;
        }

        data.add(entityOrError.getValue);
      }

      return Result.ok(data: data);
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<AssignedWalletEntity>> createAssignedWallet(
      CreateAssignedWalletVo vo) async {
    try {
      final result =
          await _assignedWalletRemoteDatasource.createAssignedWallet(vo);

      return AssignedWalletEntity.create(
          AssignedWalletDto.fromJson(result.data));
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }
}
