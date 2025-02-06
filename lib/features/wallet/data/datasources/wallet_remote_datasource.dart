import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:dartz/dartz.dart';
import 'package:hani/config.dart';
import 'package:hani/features/wallet/domain/vo/create_wallet.vo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class WalletRemoteDatasource {
  late Databases _databases;
  late String _budgetBookletDB;
  late String _walletCollectionId;
  WalletRemoteDatasource(Databases databases) {
    _databases = databases;
    _budgetBookletDB = Config.BUDGET_BOOKLET_DB;
    _walletCollectionId = Config.WALLETS_COLLECTION_ID;
  }

  Future<DocumentList> getWallets(List<String> walletIds) async {
    final documents = await _databases.listDocuments(
      databaseId: _budgetBookletDB,
      collectionId: _walletCollectionId,
      queries: [
        Query.equal('walletId', walletIds),
      ],
    );

    return documents;
  }

  Future<DocumentList> getWalletsByUserId(String userId) async {
    final documents = await _databases.listDocuments(
      databaseId: _budgetBookletDB,
      collectionId: _walletCollectionId,
      queries: [
        Query.equal('createdBy', [userId]),
      ],
    );

    return documents;
  }

  Future<Document> createWallet(CreateWalletVo vo) async {
    final String id = DateTime.now().millisecondsSinceEpoch.toString();

    final Map<String, dynamic> data = {
      'walletId': id,
      'name': vo.name,
      'initial': vo.initial,
      'createdBy': vo.createdBy,
    };

    final document = await _databases.createDocument(
        databaseId: _budgetBookletDB,
        collectionId: _walletCollectionId,
        documentId: id,
        data: data);

    return document;
  }
}
