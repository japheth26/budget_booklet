// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:appwrite/appwrite.dart' as _i317;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:local_auth/local_auth.dart' as _i152;
import 'package:logger/logger.dart' as _i974;

import '../../features/auth/data/datasource/auth_local_datasource.dart'
    as _i600;
import '../../features/auth/data/datasource/auth_remote_datasource.dart'
    as _i175;
import '../../features/auth/data/datasource/user_remote_datasource.dart'
    as _i71;
import '../../features/auth/data/repository/auth_repository.dart' as _i104;
import '../../features/auth/domain/bloc/auth/auth_bloc.dart' as _i780;
import '../../features/category/data/datasources/category_remote.datasource.dart'
    as _i339;
import '../../features/category/data/repositories/category.repository.dart'
    as _i410;
import '../../features/category/domain/bloc/category/category_bloc.dart'
    as _i618;
import '../../features/tag/data/datasources/tag_remote.datasource.dart'
    as _i558;
import '../../features/tag/data/repositories/tag.repository.dart' as _i451;
import '../../features/tag/domain/bloc/tag/tag_bloc.dart' as _i185;
import '../../features/wallet/data/datasources/assigned_wallet_remote_datasource.dart'
    as _i380;
import '../../features/wallet/data/datasources/wallet_remote_datasource.dart'
    as _i684;
import '../../features/wallet/data/repositories/assigned_wallet_repository.dart'
    as _i622;
import '../../features/wallet/data/repositories/wallet_repository.dart'
    as _i1038;
import '../../features/wallet/domain/bloc/wallet/wallet_bloc.dart' as _i563;
import 'di_container.dart' as _i198;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final diContainer = _$DiContainer();
    gh.lazySingleton<_i317.Client>(() => diContainer.client);
    gh.lazySingleton<_i317.Account>(() => diContainer.account);
    gh.lazySingleton<_i317.Databases>(() => diContainer.databases);
    gh.lazySingleton<_i317.Realtime>(() => diContainer.realtime);
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => diContainer.secureStorage);
    gh.lazySingleton<_i974.Logger>(() => diContainer.logger);
    gh.lazySingleton<_i152.LocalAuthentication>(
        () => diContainer.localAuthentication);
    gh.lazySingleton<_i600.AuthLocalDatasource>(() => _i600.AuthLocalDatasource(
          gh<_i558.FlutterSecureStorage>(),
          gh<_i152.LocalAuthentication>(),
        ));
    gh.lazySingleton<_i175.AuthRemoteDatasource>(
        () => _i175.AuthRemoteDatasource(
              gh<_i317.Account>(),
              gh<_i317.Databases>(),
            ));
    gh.lazySingleton<_i339.CategoryRemoteDatasource>(
        () => _i339.CategoryRemoteDatasource(gh<_i317.Databases>()));
    gh.lazySingleton<_i71.UserRemoteDatasource>(
        () => _i71.UserRemoteDatasource(gh<_i317.Databases>()));
    gh.lazySingleton<_i380.AssignedWalletRemoteDatasource>(
        () => _i380.AssignedWalletRemoteDatasource(gh<_i317.Databases>()));
    gh.lazySingleton<_i684.WalletRemoteDatasource>(
        () => _i684.WalletRemoteDatasource(gh<_i317.Databases>()));
    gh.lazySingleton<_i558.TagRemoteDatasource>(
        () => _i558.TagRemoteDatasource(gh<_i317.Databases>()));
    gh.lazySingleton<_i104.AuthRepository>(() => _i104.AuthRepository(
          logger: gh<_i974.Logger>(),
          authRemoteDataSource: gh<_i175.AuthRemoteDatasource>(),
          authLocalDataSource: gh<_i600.AuthLocalDatasource>(),
          userRemoteDatasource: gh<_i71.UserRemoteDatasource>(),
        ));
    gh.lazySingleton<_i622.AssignedWalletRepository>(
        () => _i622.AssignedWalletRepository(
              gh<_i974.Logger>(),
              gh<_i380.AssignedWalletRemoteDatasource>(),
            ));
    gh.lazySingleton<_i451.TagRepository>(() => _i451.TagRepository(
          gh<_i974.Logger>(),
          gh<_i558.TagRemoteDatasource>(),
        ));
    gh.lazySingleton<_i1038.WalletRepository>(() => _i1038.WalletRepository(
          gh<_i974.Logger>(),
          gh<_i684.WalletRemoteDatasource>(),
        ));
    gh.lazySingleton<_i410.CategoryRepository>(() => _i410.CategoryRepository(
          gh<_i974.Logger>(),
          gh<_i339.CategoryRemoteDatasource>(),
        ));
    gh.lazySingleton<_i563.WalletBloc>(() => _i563.WalletBloc(
          gh<_i1038.WalletRepository>(),
          gh<_i622.AssignedWalletRepository>(),
        ));
    gh.lazySingleton<_i185.TagBloc>(
        () => _i185.TagBloc(gh<_i451.TagRepository>()));
    gh.lazySingleton<_i780.AuthBloc>(
        () => _i780.AuthBloc(gh<_i104.AuthRepository>()));
    gh.lazySingleton<_i618.CategoryBloc>(
        () => _i618.CategoryBloc(gh<_i410.CategoryRepository>()));
    return this;
  }
}

class _$DiContainer extends _i198.DiContainer {}
