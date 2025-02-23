import 'package:appwrite/appwrite.dart';

import '../../../../config.dart';
import '../../../monthly_record/data/dto/monthly_record.dto.dart';

class MonthlyRecordRemoteDatasource {
  late Databases _databases;
  late String _budgetBookletDB;
  late String _monthlyRecordCollectionId;

  MonthlyRecordRemoteDatasource(Databases databases) {
    _databases = databases;
    _budgetBookletDB = Config.BUDGET_BOOKLET_DB;
    _monthlyRecordCollectionId = Config.MONTHLY_RECORD;
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

  // Future<MonthlyRecordDto> updateRecordBudget() async {}
}
