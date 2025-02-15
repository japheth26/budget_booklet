import 'package:hani/core/state_status/error_messages.dart';
import 'package:hani/features/wallet/data/datasources/wallet_remote_datasource.dart';
import 'package:hani/features/wallet/data/dto/wallet.dto.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';
import 'package:hani/features/wallet/domain/vo/create_wallet.vo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/result/result.dart';

@lazySingleton
class WalletRepository {
  late Logger _logger;
  late WalletRemoteDatasource _walletRemoteDatasource;

  WalletRepository(
      Logger logger, WalletRemoteDatasource walletRemoteDatasource) {
    _walletRemoteDatasource = walletRemoteDatasource;
    _logger = logger;
  }

  Future<Result<List<WalletEntity>>> getWallets(List<String> walletIds) async {
    try {
      if (walletIds.isEmpty) return const Result.ok(data: []);

      final dtos = await _walletRemoteDatasource.getWallets(walletIds);

      final List<WalletEntity> data = [];

      for (final dto in dtos) {
        final entityOrError = WalletEntity.create(dto);

        if (entityOrError.isFailure) {
          return Result.fail(error: entityOrError.getError);
        }

        data.add(entityOrError.getValue);
      }

      return Result.ok(data: data);
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<List<WalletEntity>>> getWalletsByUserId(String userId) async {
    try {
      final dtos = await _walletRemoteDatasource.getWalletsByUserId(userId);

      final List<WalletEntity> data = [];

      for (final dto in dtos) {
        final entityOrError = WalletEntity.create(dto);

        if (entityOrError.isFailure) {
          return Result.fail(error: entityOrError.getError);
        }

        data.add(entityOrError.getValue);
      }

      return Result.ok(data: data);
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<WalletEntity>> createWallet(CreateWalletVo vo) async {
    try {
      final dto = await _walletRemoteDatasource.createWallet(vo);

      return WalletEntity.create(dto);
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }
}
