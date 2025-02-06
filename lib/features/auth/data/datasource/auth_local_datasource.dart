import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hani/constant.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@lazySingleton
class AuthLocalDatasource {
  late FlutterSecureStorage _secureStorage;
  late LocalAuthentication _localAuthentication;

  AuthLocalDatasource(FlutterSecureStorage secureStorage,
      LocalAuthentication localAuthentication) {
    _secureStorage = secureStorage;
    _localAuthentication = localAuthentication;
  }

  Future<bool?> validateLocalAuth() async {
    final bool canAuthenticateWithBiometrics =
        await _localAuthentication.canCheckBiometrics;
    final bool canAuthenticate = canAuthenticateWithBiometrics ||
        await _localAuthentication.isDeviceSupported();

    if (canAuthenticate && canAuthenticateWithBiometrics) {
      final List<BiometricType> availableBiometrics =
          await _localAuthentication.getAvailableBiometrics();

      if (availableBiometrics.isEmpty) return null;

      return await _localAuthentication.authenticate(
          localizedReason: 'Verify local authentication');
    } else {
      return null;
    }
  }

  Future<Unit> saveSession(String sessionId) async {
    await _secureStorage.write(key: Constant.SESSION_ID_KEY, value: sessionId);

    return unit;
  }

  Future<String?> getSession() async {
    final String? sessionId =
        await _secureStorage.read(key: Constant.SESSION_ID_KEY);

    return sessionId;
  }

  Future<Unit> deleteSession() async {
    await _secureStorage.delete(key: Constant.SESSION_ID_KEY);

    return unit;
  }
}
