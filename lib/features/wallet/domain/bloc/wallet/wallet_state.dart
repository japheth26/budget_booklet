part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    required StateStatus stateStatus,
    required String errorMessage,
    required String successMessage,
    required List<WalletEntity> wallets,
    required bool walletAdded,
    required bool walletsRetrieved,
    required bool unassignedWalletsFixed,
    WalletEntity? selectedWallet,
  }) = _WalletState;

  factory WalletState.initial() => const WalletState(
        stateStatus: StateStatus.initial,
        errorMessage: '',
        successMessage: '',
        wallets: [],
        walletAdded: false,
        walletsRetrieved: false,
        unassignedWalletsFixed: false,
      );

  factory WalletState.loading(WalletState state) =>
      state.copyWith(stateStatus: StateStatus.loading);

  factory WalletState.loaded(WalletState state) =>
      state.copyWith(stateStatus: StateStatus.loaded);

  factory WalletState.error(WalletState state, String message) =>
      state.copyWith(stateStatus: StateStatus.error, errorMessage: message);

  factory WalletState.success(WalletState state, String message) =>
      state.copyWith(stateStatus: StateStatus.success, successMessage: message);

  factory WalletState.addWallet(WalletState state, WalletEntity wallet) {
    final wallets = [...state.wallets];

    wallets.add(wallet);

    return state.copyWith(wallets: wallets, walletAdded: true);
  }

  factory WalletState.walletAdded(WalletState state) =>
      state.copyWith(walletAdded: false);

  factory WalletState.retrieveWallets(
      WalletState state, List<WalletEntity> wallets) {
    return state.copyWith(wallets: wallets, walletsRetrieved: true);
  }

  factory WalletState.walletsRetrieved(WalletState state) =>
      state.copyWith(walletsRetrieved: false);

  factory WalletState.fixUnassignedWallets(WalletState state) =>
      state.copyWith(unassignedWalletsFixed: true);

  factory WalletState.unassignedWalletsFixed(WalletState state) =>
      state.copyWith(unassignedWalletsFixed: false);

  factory WalletState.selectWallet(WalletState state, String walletId) {
    return state.copyWith(
        selectedWallet:
            state.wallets.firstWhereOrNull((e) => e.walletId == walletId));
  }
}
