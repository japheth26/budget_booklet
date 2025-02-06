import 'package:appwrite/appwrite.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:logger/logger.dart';

import '../../config.dart';

@module
abstract class DiContainer {
  @lazySingleton
  Client get client =>
      Client().setEndpoint(Config.API_ENDPOINT).setProject(Config.PROJECT_ID);

  @lazySingleton
  Account get account => Account(client);

  @lazySingleton
  Databases get databases => Databases(client);

  @lazySingleton
  Realtime get realtime => Realtime(client);

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  LocalAuthentication get localAuthentication => LocalAuthentication();
}
