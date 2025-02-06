import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRemoteDatasource {
  late Account _account;

  AuthRemoteDatasource(Account account, Databases databases) {
    _account = account;
  }

  Future<User> signUp(String email, String password, String name) async {
    final id = ID.unique();
    final User user = await _account.create(
      userId: id,
      email: email,
      password: password,
      name: name,
    );

    return user;
  }

  Future<Session> login(String email, String password) async {
    final Session session = await _account.createEmailPasswordSession(
        email: email, password: password);

    return session;
  }

  Future<Unit> logout(String sessionId) async {
    await _account.deleteSession(sessionId: sessionId);

    return unit;
  }

  Future<Session> getSession(String sessionId) async {
    final Session session = await _account.getSession(sessionId: sessionId);

    return session;
  }
}
