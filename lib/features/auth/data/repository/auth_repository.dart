import 'package:dartz/dartz.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/state_status/error_messages.dart';
import 'package:hani/features/auth/data/datasource/auth_local_datasource.dart';
import 'package:hani/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:hani/features/auth/data/datasource/user_remote_datasource.dart';
import 'package:hani/features/auth/data/dto/auth_user.dto.dart';
import 'package:hani/features/auth/domain/vo/sign_in.vo.dart';
import 'package:hani/features/auth/domain/vo/sign_up_user.vo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../domain/entity/auth_user.entity.dart';

@lazySingleton
class AuthRepository {
  final Logger logger;
  final AuthRemoteDatasource authRemoteDataSource;
  final AuthLocalDatasource authLocalDataSource;
  final UserRemoteDatasource userRemoteDatasource;

  AuthRepository({
    required this.logger,
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
    required this.userRemoteDatasource,
  });

  Future<Result<bool?>> validateLocalAuth() async {
    try {
      final result = await authLocalDataSource.validateLocalAuth();

      if (result == null) {
        return const Result.fail(error: 'No available local authentication');
      }

      return Result.ok(data: result);
    } catch (e) {
      logger.e(e.toString());
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<AuthUserEntity>> signUp(SignUpUserVo vo) async {
    try {
      final user = await authRemoteDataSource.signUp(
        vo.emailAddress,
        vo.password,
        '${vo.firstName} ${vo.lastName}',
      );

      final session = await authRemoteDataSource.getSession('current');

      await authLocalDataSource.saveSession(session.$id);

      final document = await userRemoteDatasource.createUser(
        user.$id,
        vo.firstName,
        vo.lastName,
        vo.emailAddress,
      );

      return AuthUserEntity.create(AuthUserDto.fromJson(document.data));
    } catch (e) {
      logger.e(e.toString());
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<Unit>> signOut() async {
    try {
      final String sessionId = await authLocalDataSource.getSession() ?? '';

      await authRemoteDataSource.logout(sessionId);

      await authLocalDataSource.deleteSession();

      return const Result.ok(data: unit);
    } catch (e) {
      logger.e(e.toString());
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<Unit>> checkSession() async {
    try {
      final String? sessionId = await authLocalDataSource.getSession();

      if (sessionId == null) {
        return const Result.fail(error: 'Session not found');
      }

      final session = await authRemoteDataSource.getSession(sessionId);

      await authLocalDataSource.saveSession(session.$id);

      return const Result.ok(data: unit);
    } catch (e) {
      logger.e(e.toString());
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<AuthUserEntity>> signIn(SignInVo vo) async {
    try {
      final String? sessionId = await authLocalDataSource.getSession();

      if (sessionId != null) {
        await authRemoteDataSource.logout(sessionId);
        await authLocalDataSource.deleteSession();
      }

      final session =
          await authRemoteDataSource.login(vo.emailAddress, vo.password);

      await authLocalDataSource.saveSession(session.$id);

      final user = await userRemoteDatasource.getUser(session.userId);

      return AuthUserEntity.create(AuthUserDto.fromJson(user.data));
    } catch (e) {
      logger.e(e.toString());
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<AuthUserEntity>> checkAuth() async {
    try {
      final String? sessionId = await authLocalDataSource.getSession();

      if (sessionId == null) {
        return const Result.fail(error: 'Session not found');
      }

      final session = await authRemoteDataSource.getSession(sessionId);

      await authLocalDataSource.saveSession(session.$id);

      final user = await userRemoteDatasource.getUser(session.userId);

      return AuthUserEntity.create(AuthUserDto.fromJson(user.data));
    } catch (e) {
      logger.e(e.toString());
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }
}
