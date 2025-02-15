import 'package:equatable/equatable.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/wallet/data/dto/wallet.dto.dart';

class TransactionType {
  static const String _income = 'income';
  static const String _expense = 'expense';

  static String get income => _income;
  static String get expense => _expense;

  static List<String> values = [income, expense];
}

class WalletEntity extends Equatable {
  final String walletId;
  final String name;
  final String createdBy;

  const WalletEntity({
    required this.walletId,
    required this.name,
    required this.createdBy,
  });

  @override
  List<Object?> get props => [
        walletId,
        name,
        createdBy,
      ];

  static Result<WalletEntity> create(WalletDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstEmptyString('Name', dto.name),
      Guard.againstEmptyString('Created By ID', dto.createdBy),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final WalletEntity data = WalletEntity(
      walletId: dto.walletId!,
      name: dto.name!,
      createdBy: dto.createdBy!,
    );

    return Result.ok(data: data);
  }
}
