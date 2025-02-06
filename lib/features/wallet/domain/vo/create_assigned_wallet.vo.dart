import 'package:equatable/equatable.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/features/wallet/data/dto/create_assigned_wallet.dto.dart';

import '../../../../core/validator/guard.dart';
import '../entity/assigned_wallet.entity.dart';

class CreateAssignedWalletVo extends Equatable {
  final String walletId;
  final String userId;
  final String access;
  final String role;

  const CreateAssignedWalletVo(
      {required this.walletId,
      required this.userId,
      required this.access,
      required this.role});

  @override
  List<Object?> get props => [walletId, userId, access, role];

  static Result<CreateAssignedWalletVo> create(CreateAssignedWalletDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstEmptyString('User ID', dto.userId),
      Guard.againstInvalidArrayItem(
          'Wallet Access', WalletAccess.values, dto.access),
      Guard.againstInvalidArrayItem('Wallet Role', WalletRole.values, dto.role),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = CreateAssignedWalletVo(
      walletId: dto.walletId!,
      userId: dto.userId!,
      access: dto.access!,
      role: dto.role!,
    );

    return Result.ok(data: data);
  }
}
