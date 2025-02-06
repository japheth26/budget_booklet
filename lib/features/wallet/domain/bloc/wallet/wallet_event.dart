part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.createWallet({required CreateWalletDto dto}) =
      _CreateWallet;

  const factory WalletEvent.fixAssignedWallets({required String userId}) =
      _FixUnassignedWallets;

  const factory WalletEvent.getWallets({required String userId}) = _GetWallets;

  const factory WalletEvent.selectWallet({required String walletId}) =
      _SelectWallet;
}
