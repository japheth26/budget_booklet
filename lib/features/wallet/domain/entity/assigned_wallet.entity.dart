import 'package:equatable/equatable.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/wallet/data/dto/assigned_wallet.dto.dart';

class WalletAccess {
  static const String _read = 'read';
  static const String _write = 'write';

  static String get read => _read;
  static String get write => _write;

  static List<String> values = [read, write];
}

class WalletRole {
  static const _admin = 'admin';
  static const _manager = 'manager';
  static const _member = 'member';

  static String get admin => _admin;

  static String get manager => _manager;

  static String get member => _member;

  static List<String> values = [admin, manager, member];
}

class AssignedWalletEntity extends Equatable {
  final String assignedWalletId;
  final String walletId;
  final String userId;
  final String access;
  final String role;

  const AssignedWalletEntity(
      {required this.assignedWalletId,
      required this.walletId,
      required this.userId,
      required this.access,
      required this.role});

  @override
  List<Object?> get props => [walletId, userId, access, role];

  static Result<AssignedWalletEntity> create(AssignedWalletDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Assigned Wallet ID', dto.assignedWalletId),
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstEmptyString('User ID', dto.userId),
      Guard.againstInvalidArrayItem(
          'Wallet Access', WalletAccess.values, dto.access),
      Guard.againstInvalidArrayItem('Wallet Role', WalletRole.values, dto.role),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = AssignedWalletEntity(
      assignedWalletId: dto.assignedWalletId!,
      walletId: dto.walletId!,
      userId: dto.userId!,
      access: dto.access!,
      role: dto.role!,
    );

    return Result.ok(data: data);
  }
}
