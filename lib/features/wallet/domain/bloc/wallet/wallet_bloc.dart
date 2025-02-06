import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/features/wallet/data/dto/create_assigned_wallet.dto.dart';
import 'package:hani/features/wallet/data/dto/create_wallet.dto.dart';
import 'package:hani/features/wallet/data/repositories/assigned_wallet_repository.dart';
import 'package:hani/features/wallet/data/repositories/wallet_repository.dart';
import 'package:hani/features/wallet/domain/entity/assigned_wallet.entity.dart';
import 'package:hani/features/wallet/domain/vo/create_assigned_wallet.vo.dart';
import 'package:hani/features/wallet/domain/vo/create_wallet.vo.dart';
import 'package:injectable/injectable.dart';
import 'package:collection/collection.dart';

import '../../entity/wallet.entity.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';
part 'wallet_bloc.freezed.dart';

@lazySingleton
class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc(
    WalletRepository walletRepository,
    AssignedWalletRepository assignedWalletRepository,
  ) : super(WalletState.initial()) {
    on<_CreateWallet>((event, emit) async {
      emit(WalletState.loading(state));

      final voOrError = CreateWalletVo.create(event.dto);

      if (voOrError.isFailure) {
        emit(WalletState.error(state, voOrError.getError));
        emit(WalletState.loaded(state));
        return;
      }

      final result = await walletRepository.createWallet(voOrError.getValue);

      if (result.isFailure) {
        emit(WalletState.error(state, result.getError));
        emit(WalletState.loaded(state));
        return;
      }

      final wallet = result.getValue;

      final voOrError2 = CreateAssignedWalletVo.create(CreateAssignedWalletDto(
        walletId: wallet.walletId,
        userId: wallet.createdBy,
        access: WalletAccess.write,
        role: WalletRole.admin,
      ));

      if (voOrError2.isSuccess) {
        await assignedWalletRepository
            .createAssignedWallet(voOrError2.getValue);
      }

      emit(WalletState.addWallet(state, result.getValue));
      emit(WalletState.walletAdded(state));
      emit(WalletState.success(state, 'Wallet has been added'));

      emit(WalletState.loaded(state));
    });

    on<_FixUnassignedWallets>((event, emit) async {
      emit(WalletState.loading(state));

      final result = await walletRepository.getWalletsByUserId(event.userId);

      if (result.isFailure) return;

      final result2 =
          await assignedWalletRepository.getAssignedWallets(event.userId);

      if (result2.isFailure) return;

      final createdWallets = result.getValue;
      final assignedWallets = result2.getValue;

      final unassignedWallets = createdWallets.where((e) {
        final assignedWalletIds =
            assignedWallets.map((e) => e.walletId).toList();
        return !assignedWalletIds.contains(e.walletId);
      }).toList();

      for (final wallet in unassignedWallets) {
        final voOrError2 =
            CreateAssignedWalletVo.create(CreateAssignedWalletDto(
          walletId: wallet.walletId,
          userId: wallet.createdBy,
          access: WalletAccess.write,
          role: WalletRole.admin,
        ));

        if (voOrError2.isSuccess) {
          await assignedWalletRepository
              .createAssignedWallet(voOrError2.getValue);
        }
      }

      emit(WalletState.fixUnassignedWallets(state));
      emit(WalletState.unassignedWalletsFixed(state));
    });

    on<_GetWallets>((event, emit) async {
      emit(WalletState.loading(state));

      final assignedWalletResult =
          await assignedWalletRepository.getAssignedWallets(event.userId);

      if (assignedWalletResult.isFailure) {
        emit(WalletState.error(state, assignedWalletResult.getError));
        emit(WalletState.loaded(state));
        return;
      }

      final walletIds =
          assignedWalletResult.getValue.map((e) => e.walletId).toList();

      final result = await walletRepository.getWallets(walletIds);

      if (result.isFailure) {
        emit(WalletState.error(state, result.getError));
        emit(WalletState.loaded(state));
        return;
      }

      emit(WalletState.retrieveWallets(state, result.getValue));
      emit(WalletState.walletsRetrieved(state));

      emit(WalletState.loaded(state));
    });

    on<_SelectWallet>((event, emit) {
      emit(WalletState.selectWallet(state, event.walletId));
    });
  }
}
