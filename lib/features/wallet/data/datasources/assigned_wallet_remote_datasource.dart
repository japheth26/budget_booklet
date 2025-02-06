import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:hani/config.dart';
import 'package:hani/features/wallet/data/dto/create_assigned_wallet.dto.dart';
import 'package:hani/features/wallet/domain/vo/create_assigned_wallet.vo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AssignedWalletRemoteDatasource {
  late Databases _databases;
  late String _budgetBookletDB;
  late String _assignedWalletCollectionId;

  AssignedWalletRemoteDatasource(Databases databases) {
    _databases = databases;
    _budgetBookletDB = Config.BUDGET_BOOKLET_DB;
    _assignedWalletCollectionId = Config.ASSIGNED_WALLET_COLLECTION_ID;
  }

  Future<DocumentList> getAssignedWallets(String userId) async {
    final documents = await _databases.listDocuments(
      databaseId: _budgetBookletDB,
      collectionId: _assignedWalletCollectionId,
      queries: [
        Query.equal('userId', userId),
      ],
    );

    return documents;
  }

  Future<Document> createAssignedWallet(CreateAssignedWalletVo vo) async {
    final id = ID.unique();

    final Map<String, dynamic> data = {
      'assignedWalletId': id,
      'walletId': vo.walletId,
      'userId': vo.userId,
      'access': vo.access,
      'role': vo.role,
    };

    final document = await _databases.createDocument(
      databaseId: _budgetBookletDB,
      collectionId: _assignedWalletCollectionId,
      documentId: id,
      data: data,
    );
    return document;
  }
}
