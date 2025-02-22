part of 'budget_bloc.dart';

@freezed
class BudgetState with _$BudgetState {
  factory BudgetState({
    required StateStatus stateStatus,
    required String errorMessage,
    required String successMessage,
    required Map<String, BudgetEntity> budgetById,
    required bool updated,
    required bool retrieved,
  }) = _BudgetState;

  factory BudgetState.initial() => BudgetState(
        stateStatus: StateStatus.initial,
        errorMessage: '',
        successMessage: '',
        budgetById: {},
        updated: false,
        retrieved: false,
      );

  factory BudgetState.loading(BudgetState state) =>
      state.copyWith(stateStatus: StateStatus.loading);

  factory BudgetState.loaded(BudgetState state) =>
      state.copyWith(stateStatus: StateStatus.loaded);

  factory BudgetState.error(BudgetState state, String errorMessage) =>
      state.copyWith(
        stateStatus: StateStatus.loading,
        errorMessage: errorMessage,
      );

  factory BudgetState.success(BudgetState state, String successMessage) =>
      state.copyWith(
        stateStatus: StateStatus.loading,
        successMessage: successMessage,
      );

  factory BudgetState.saveBudgetList(
      BudgetState state, List<BudgetEntity> list) {
    final Map<String, BudgetEntity> budgetById = list.asMap().map((_, budget) {
      return MapEntry(budget.budgetId, budget);
    });

    return state.copyWith(budgetById: {
      ...state.budgetById,
      ...budgetById,
    });
  }

  factory BudgetState.addBudget(BudgetState state, BudgetEntity budget) {
    final budgetById = {
      ...state.budgetById,
      budget.budgetId: budget,
    };

    return state.copyWith(budgetById: budgetById);
  }

  factory BudgetState.updateBudget(BudgetState state, BudgetEntity budget) {
    final budgetById = {
      ...state.budgetById,
      budget.budgetId: budget,
    };

    return state.copyWith(budgetById: budgetById);
  }
}
