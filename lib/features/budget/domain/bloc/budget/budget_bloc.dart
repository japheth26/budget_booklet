import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/features/budget/data/dto/create_budget.dto.dart';
import 'package:hani/features/budget/data/dto/get_monthly_budget.dto.dart';
import 'package:hani/features/budget/domain/entities/budget.entity.dart';
import 'package:hani/features/budget/domain/repositories/i_budget.repository.dart';
import 'package:hani/features/budget/domain/vo/create_budget.vo.dart';
import 'package:hani/features/budget/domain/vo/delete_budget.vo.dart';
import 'package:hani/features/budget/domain/vo/get_monthly_budget.vo.dart';
import 'package:hani/features/budget/domain/vo/update_budget.vo.dart';
import 'package:injectable/injectable.dart';

import '../../../data/dto/delete_budget.dto.dart';
import '../../../data/dto/update_budget.dto.dart';

part 'budget_event.dart';
part 'budget_state.dart';
part 'budget_bloc.freezed.dart';

@lazySingleton
class BudgetBloc extends Bloc<BudgetEvent, BudgetState> {
  BudgetBloc(IBudgetRepository budgetRepository)
      : super(BudgetState.initial()) {
    on<_GetMonthlyBudget>((event, emit) async {
      emit(BudgetState.loading(state));

      final voOrError = GetMonthlyBudgetVo.create(event.dto);
      if (voOrError.isFailure) {
        emit(BudgetState.error(state, voOrError.getError));
        emit(BudgetState.loaded(state));
        return;
      }

      final result =
          await budgetRepository.getMonthlyBudget(voOrError.getValue);

      if (result.isFailure) {
        emit(BudgetState.error(state, result.getError));
        emit(BudgetState.loaded(state));
        return;
      }

      emit(BudgetState.saveBudgetList(state, result.getValue));
      emit(state.copyWith(retrieved: true));
      emit(state.copyWith(retrieved: false));
      emit(BudgetState.loaded(state));
    });

    on<_CreateBudget>((event, emit) async {
      emit(BudgetState.loading(state));

      final voOrError = CreateBudgetVo.create(event.dto);
      if (voOrError.isFailure) {
        emit(BudgetState.error(state, voOrError.getError));
        emit(BudgetState.loaded(state));
        return;
      }

      final result = await budgetRepository.createBudget(voOrError.getValue);
      if (result.isFailure) {
        emit(BudgetState.error(state, result.getError));
        emit(BudgetState.loaded(state));
        return;
      }

      emit(state.copyWith(updated: true));
      emit(state.copyWith(updated: false));
      emit(BudgetState.addBudget(state, result.getValue));
      emit(BudgetState.success(state, 'Budget successfully added!'));
      emit(BudgetState.loaded(state));
    });

    on<_UpdateBudget>((event, emit) async {
      emit(BudgetState.loading(state));

      final voOrError = UpdateBudgetVo.create(event.dto);
      if (voOrError.isFailure) {
        emit(BudgetState.error(state, voOrError.getError));
        emit(BudgetState.loaded(state));
        return;
      }

      final result = await budgetRepository.updateBudget(voOrError.getValue);
      if (result.isFailure) {
        emit(BudgetState.error(state, result.getError));
        emit(BudgetState.loaded(state));
        return;
      }

      emit(state.copyWith(updated: true));
      emit(state.copyWith(updated: false));
      emit(BudgetState.updateBudget(state, result.getValue));
      emit(BudgetState.success(state, 'Budget successfully updated!'));
      emit(BudgetState.loaded(state));
    });

    on<_DeleteBudget>((event, emit) async {
      emit(BudgetState.loading(state));

      final voOrError = DeleteBudgetVo.create(event.dto);
      if (voOrError.isFailure) {
        emit(BudgetState.error(state, voOrError.getError));
        emit(BudgetState.loaded(state));
        return;
      }

      final result = await budgetRepository.deleteBudget(voOrError.getValue);
      if (result.isFailure) {
        emit(BudgetState.error(state, result.getError));
        emit(BudgetState.loaded(state));
        return;
      }

      emit(state.copyWith(updated: true));
      emit(state.copyWith(updated: false));
      emit(BudgetState.updateBudget(state, result.getValue));
      emit(BudgetState.success(state, 'Budget successfully deleted!'));
      emit(BudgetState.loaded(state));
    });
  }
}
