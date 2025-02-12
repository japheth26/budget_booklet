import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:dartz/dartz.dart';
import 'package:hani/config.dart';
import 'package:hani/features/category/data/dto/category_tag.dto.dart';
import 'package:hani/features/category/data/dto/category_tags_pager.dto.dart';
import 'package:injectable/injectable.dart';

import '../../domain/vo/create_category_tags_vo.dart';

@lazySingleton
class CategoryTagsRemoteDatasource {
  late Databases _databases;
  late String _budgetBookletDB;
  late String _categoryTagsCollectionId;

  CategoryTagsRemoteDatasource(Databases databases) {
    _databases = databases;
    _budgetBookletDB = Config.BUDGET_BOOKLET_DB;
    _categoryTagsCollectionId = Config.CATEGORY_TAG_COLLECTION_ID;
  }

  Future<CategoryTagsPagerDto> getCategoryTags(
      List<String> categoryIds, int page, int limit) async {
    final offset = limit * (page - 1);
    final documentList = await _databases.listDocuments(
      databaseId: _budgetBookletDB,
      collectionId: _categoryTagsCollectionId,
      queries: [
        Query.equal('categoryId', categoryIds),
        Query.limit(limit),
        Query.offset(offset),
      ],
    );

    return CategoryTagsPagerDto(
      page: page,
      maxPage: (documentList.total / limit).ceil(),
      categoryTags: documentList.documents
          .map((e) => CategoryTagDto.fromJson(e.data))
          .toList(),
    );
  }

  Future<Unit> createCategoryTags(
      String categoryId, List<String> tagIds) async {
    for (final String tagId in tagIds) {
      final categoryTagId = ID.unique();

      final data = {
        'categoryTagId': categoryTagId,
        'categoryId': categoryId,
        'tagId': tagId,
      };

      await _databases.createDocument(
        databaseId: _budgetBookletDB,
        collectionId: _categoryTagsCollectionId,
        documentId: categoryTagId,
        data: data,
      );
    }

    return unit;
  }

  Future<Unit> deleteCategoryTags(
      String categoryId, List<String> categoryTagIds) async {
    for (final String categoryTagId in categoryTagIds) {
      await _databases.deleteDocument(
        databaseId: _budgetBookletDB,
        collectionId: _categoryTagsCollectionId,
        documentId: categoryTagId,
      );
    }

    return unit;
  }
}
