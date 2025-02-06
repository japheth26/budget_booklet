import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:hani/config.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserRemoteDatasource {
  late Databases _databases;
  late String _budgetBookletDB;
  late String _usersCollectionId;

  UserRemoteDatasource(Databases databases) {
    _databases = databases;

    _budgetBookletDB = Config.BUDGET_BOOKLET_DB;
    _usersCollectionId = Config.USERS_COLLECTION_ID;
  }

  Future<Document> createUser(String userId, String firstName, String lastName,
      String emailAddress) async {
    final Map<String, dynamic> data = {
      'userId': userId,
      'firstName': firstName,
      'lastName': lastName,
      'emailAddress': emailAddress,
    };

    final Document document = await _databases.createDocument(
      databaseId: _budgetBookletDB,
      collectionId: _usersCollectionId,
      data: data,
      documentId: userId,
    );

    return document;
  }

  Future<Document> getUser(String userId) async {
    final Document document = await _databases.getDocument(
      databaseId: _budgetBookletDB,
      collectionId: _usersCollectionId,
      documentId: userId,
    );

    return document;
  }
}
