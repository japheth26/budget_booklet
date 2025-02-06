import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:hani/config.dart';
import 'package:injectable/injectable.dart';

import '../../domain/vo/create_category.vo.dart';
import '../../domain/vo/delete_category.vo.dart';
import '../../domain/vo/update_category.vo.dart';

@lazySingleton
class CategoryRemoteDatasource {
  late Databases _databases;
  late String _budgetBookletDB;
  late String _categoryCollectionId;

  CategoryRemoteDatasource(Databases databases) {
    _databases = databases;
    _budgetBookletDB = Config.BUDGET_BOOKLET_DB;
    _categoryCollectionId = Config.CATEGORY_COLLECTION_ID;
  }

  Future<DocumentList> getCategories(
      String walletId, int page, int limit) async {
    final offset = limit * (page - 1);
    final documentList = await _databases.listDocuments(
      databaseId: _budgetBookletDB,
      collectionId: _categoryCollectionId,
      queries: [
        Query.equal('walletId', walletId),
        Query.limit(limit),
        Query.offset(offset),
      ],
    );

    return documentList;
  }

  Future<Document> createCategory(CreateCategoryVo vo) async {
    final categoryId = ID.unique();

    final data = {
      'categoryId': categoryId,
      ...vo.toJson(),
    };

    final document = await _databases.createDocument(
      databaseId: _budgetBookletDB,
      collectionId: _categoryCollectionId,
      documentId: categoryId,
      data: data,
    );

    return document;
  }

  Future<Document> updateCategory(UpdateCategoryVo vo) async {
    final data = {...vo.toJson()};
    data.remove('categoryId');

    final document = await _databases.updateDocument(
      databaseId: _budgetBookletDB,
      collectionId: _categoryCollectionId,
      documentId: vo.categoryId,
      data: data,
    );

    return document;
  }

  Future<Document> deleteCategory(DeleteCategoryVo vo) async {
    final data = {
      'deletedBy': vo.userId,
      'deleted': true,
    };

    final document = await _databases.updateDocument(
      databaseId: _budgetBookletDB,
      collectionId: _categoryCollectionId,
      documentId: vo.categoryId,
      data: data,
    );

    return document;
  }
}
