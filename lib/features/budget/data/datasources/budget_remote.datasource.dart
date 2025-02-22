import 'package:appwrite/appwrite.dart';
import 'package:hani/config.dart';
import 'package:hani/features/budget/domain/vo/delete_budget.vo.dart';
import 'package:hani/features/budget/domain/vo/get_monthly_budget.vo.dart';
import 'package:hani/features/budget/domain/vo/update_budget.vo.dart';
import 'package:injectable/injectable.dart';

import '../../domain/vo/create_budget.vo.dart';
import '../dto/budget.dto.dart';

@lazySingleton
class BudgetRemoteDatasource {
  late Databases _databases;
  late String _budgetBookletDB;
  late String _budgetCollectionId;
  BudgetRemoteDatasource(Databases databases) {
    _databases = databases;
    _budgetBookletDB = Config.BUDGET_BOOKLET_DB;
    _budgetCollectionId = Config.BUDGET;
  }

  Future<List<BudgetDto>> getMonthlyBudget(GetMonthlyBudgetVo vo) async {
    int page = 1;
    int maxPage = -1;
    const limit = 100;

    final List<BudgetDto> list = [];

    while (maxPage == -1 || maxPage > page) {
      final offset = limit * (page - 1);

      final documentList = await _databases.listDocuments(
          databaseId: _budgetBookletDB,
          collectionId: _budgetCollectionId,
          queries: [
            Query.equal('walletId', vo.walletId),
            Query.greaterThanEqual('from', vo.from),
            Query.lessThanEqual('to', vo.to),
            Query.offset(offset),
            Query.limit(limit),
          ]);

      list.addAll(
          documentList.documents.map((e) => BudgetDto.fromJson(e.data)));

      if (maxPage == -1) {
        maxPage = (documentList.total / limit).ceil();
      }

      page++;
    }

    return list;
  }

  Future<BudgetDto> createBudget(CreateBudgetVo vo) async {
    final id = ID.unique();

    final data = {
      'budgetId': id,
      ...vo.toJson(),
    };

    final document = await _databases.createDocument(
      databaseId: _budgetBookletDB,
      collectionId: _budgetCollectionId,
      documentId: id,
      data: data,
    );

    return BudgetDto.fromJson(document.data);
  }

  Future<BudgetDto> updateBudget(UpdateBudgetVo vo) async {
    final data = {
      ...vo.toJson(),
    };

    data.remove('budgetId');

    final document = await _databases.updateDocument(
      databaseId: _budgetBookletDB,
      collectionId: _budgetCollectionId,
      documentId: vo.budgetId,
      data: data,
    );

    return BudgetDto.fromJson(document.data);
  }

  Future<BudgetDto> deleteBudget(DeleteBudgetVo vo) async {
    final data = {
      'deleted': true,
      'deletedBy': vo.userId,
    };

    final document = await _databases.updateDocument(
      databaseId: _budgetBookletDB,
      collectionId: _budgetCollectionId,
      documentId: vo.budgetId,
      data: data,
    );

    return BudgetDto.fromJson(document.data);
  }
}
