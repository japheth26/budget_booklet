part of 'budget_bloc.dart';

@freezed
class BudgetEvent with _$BudgetEvent {
  const factory BudgetEvent.getMonthlyBudget(
      {required GetMonthlyBudgetDto dto}) = _GetMonthlyBudget;

  const factory BudgetEvent.createBudget({required CreateBudgetDto dto}) =
      _CreateBudget;

  const factory BudgetEvent.updateBudget({required UpdateBudgetDto dto}) =
      _UpdateBudget;

  const factory BudgetEvent.deleteBudget({required DeleteBudgetDto dto}) =
      _DeleteBudget;
}
