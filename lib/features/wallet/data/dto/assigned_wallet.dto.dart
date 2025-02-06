import 'package:freezed_annotation/freezed_annotation.dart';

part 'assigned_wallet.dto.freezed.dart';
part 'assigned_wallet.dto.g.dart';

@freezed
class AssignedWalletDto with _$AssignedWalletDto {
  const factory AssignedWalletDto({
    String? assignedWalletId,
    String? walletId,
    String? userId,
    String? access,
    String? role,
  }) = _AssignedWalletDto;

  factory AssignedWalletDto.fromJson(json) => _$AssignedWalletDtoFromJson(json);
}
