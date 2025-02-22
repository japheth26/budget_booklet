import 'package:appwrite/appwrite.dart';
import 'package:hani/config.dart';
import 'package:hani/features/wallet/domain/vo/create_wallet.vo.dart';
import 'package:injectable/injectable.dart';

import '../dto/wallet.dto.dart';

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

  Future<List<WalletDto>> getWallets(List<String> walletIds) async {
    final docs = await _databases.listDocuments(
      databaseId: _budgetBookletDB,
      collectionId: _walletCollectionId,
      queries: [
        Query.equal('walletId', walletIds),
      ],
    );

    final List<WalletDto> result = [];

    for (final doc in docs.documents) {
      result.add(WalletDto.fromJson(doc.data));
    }

    return result;
  }

  Future<List<WalletDto>> getWalletsByUserId(String userId) async {
    final docs = await _databases.listDocuments(
      databaseId: _budgetBookletDB,
      collectionId: _walletCollectionId,
      queries: [
        Query.equal('createdBy', [userId]),
      ],
    );

    final List<WalletDto> result = [];

    for (final doc in docs.documents) {
      result.add(WalletDto.fromJson(doc.data));
    }

    return result;
  }

  Future<WalletDto> createWallet(CreateWalletVo vo) async {
    final String id = DateTime.now().millisecondsSinceEpoch.toString();

    final Map<String, dynamic> data = {
      'walletId': id,
      'name': vo.name,
      'createdBy': vo.createdBy,
    };

    final document = await _databases.createDocument(
        databaseId: _budgetBookletDB,
        collectionId: _walletCollectionId,
        documentId: id,
        data: data);

    return WalletDto.fromJson(document.data);
  }
}
