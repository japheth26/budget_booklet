import 'package:appwrite/appwrite.dart';
import 'package:hani/config.dart';
import 'package:hani/features/monthly_record/domain/vo/create_monthly_record.vo.dart';
import 'package:injectable/injectable.dart';

import '../dto/monthly_record.dto.dart';

@lazySingleton
class MonthlyRecordRemoteDatasource {
  late Databases _databases;
  late String _budgetBookletDB;
  late String _monthlyRecordCollectionId;

  MonthlyRecordRemoteDatasource(Databases databases) {
    _databases = databases;
    _budgetBookletDB = Config.BUDGET_BOOKLET_DB;
    _monthlyRecordCollectionId = Config.MONTHLY_RECORD;
  }

  Future<List<MonthlyRecordDto>> getMonthlyRecords(
      List<String> walletIds) async {
    final List<MonthlyRecordDto> result = [];

    for (final walletId in walletIds) {
      final documentList = await _databases.listDocuments(
          databaseId: _budgetBookletDB,
          collectionId: _monthlyRecordCollectionId,
          queries: [
            Query.equal('walletId', walletId),
            Query.limit(1),
            Query.orderDesc('month'),
            Query.orderDesc('year'),
          ]);

      final documents = documentList.documents;

      if (documents.isEmpty) {
        continue;
      }

      result.add(MonthlyRecordDto.fromJson(documents.first.data));
    }

    return result;
  }

  Future<MonthlyRecordDto> createMonthlyRecord(CreateMonthlyRecordVo vo) async {
    final recordId = ID.unique();

    final data = {
      'recordId': recordId,
      ...vo.toJson(),
    };

    final document = await _databases.createDocument(
      databaseId: _budgetBookletDB,
      collectionId: _monthlyRecordCollectionId,
      documentId: recordId,
      data: data,
    );

    return MonthlyRecordDto.fromJson(document.data);
  }

  Future<MonthlyRecordDto?> getMonthlyRecord(
      String walletId, int month, int year) async {
    final documentList = await _databases.listDocuments(
        databaseId: _budgetBookletDB,
        collectionId: _monthlyRecordCollectionId,
        queries: [
          Query.equal('walletId', walletId),
          Query.equal('month', month),
          Query.equal('year', year),
          Query.limit(1),
        ]);

    return documentList.documents.isNotEmpty
        ? MonthlyRecordDto.fromJson(documentList.documents[0].data)
        : null;
  }
}
