import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet.dto.freezed.dart';
part 'wallet.dto.g.dart';

@freezed
class WalletDto with _$WalletDto {
  const factory WalletDto(
    String? walletId,
    String? name,
    double? initial,
    double? income,
    double? expense,
    String? createdBy,
  ) = _WalletDto;

  const WalletDto._();

  factory WalletDto.fromJson(Map<String, dynamic> json) =>
      _$WalletDtoFromJson(json);
}
