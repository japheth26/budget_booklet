import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:hani/config.dart';
import 'package:hani/features/tag/domain/vo/create_tag.vo.dart';
import 'package:injectable/injectable.dart';

import '../../domain/vo/delete_tag.vo.dart';
import '../../domain/vo/update_tag.vo.dart';

@lazySingleton
class TagRemoteDatasource {
  late Databases _databases;
  late String _budgetBookletDB;
  late String _tagsCollectionId;

  TagRemoteDatasource(Databases databases) {
    _databases = databases;
    _budgetBookletDB = Config.BUDGET_BOOKLET_DB;
    _tagsCollectionId = Config.TAG_COLLECTION_ID;
  }

  Future<DocumentList> getTags(String walletId, int page, int limit) async {
    final offset = limit * (page - 1);
    final documentList = await _databases.listDocuments(
      databaseId: _budgetBookletDB,
      collectionId: _tagsCollectionId,
      queries: [
        Query.equal('walletId', walletId),
        Query.limit(limit),
        Query.offset(offset),
      ],
    );

    return documentList;
  }

  Future<Document> createTag(CreateTagVo vo) async {
    final tagId = ID.unique();

    final data = {
      'tagId': tagId,
      ...vo.toJson(),
    };

    final document = await _databases.createDocument(
        databaseId: _budgetBookletDB,
        collectionId: _tagsCollectionId,
        documentId: tagId,
        data: data);

    return document;
  }

  Future<Document> updateTag(UpdateTagVo vo) async {
    final data = {
      'label': vo.label,
      'color': vo.color,
    };

    final document = await _databases.updateDocument(
        databaseId: _budgetBookletDB,
        collectionId: _tagsCollectionId,
        documentId: vo.tagId,
        data: data);

    return document;
  }

  Future<Document> deleteTag(DeleteTagVo vo) async {
    final data = {
      'deleted': true,
      'deletedBy': vo.userId,
    };

    final document = await _databases.updateDocument(
        databaseId: _budgetBookletDB,
        collectionId: _tagsCollectionId,
        documentId: vo.tagId,
        data: data);

    return document;
  }
}
