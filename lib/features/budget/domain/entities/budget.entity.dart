import 'package:equatable/equatable.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/budget/data/dto/budget.dto.dart';

class BudgetEntity extends Equatable {
  final String budgetId;
  final String walletId;
  final String name;
  final double amount;
  final double totalExpense;
  final DateTime from;
  final DateTime to;
  final String? notes;
  final bool deleted;
  final String? deletedBy;

  const BudgetEntity(
      {required this.budgetId,
      required this.walletId,
      required this.name,
      required this.amount,
      required this.totalExpense,
      required this.from,
      required this.to,
      this.notes,
      required this.deleted,
      this.deletedBy});

  @override
  List<Object?> get props => [
        budgetId,
        walletId,
        name,
        amount,
        totalExpense,
        from,
        to,
        notes,
        deleted,
        deletedBy,
      ];

  static Result<BudgetEntity> create(BudgetDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Budget ID', dto.budgetId),
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstEmptyString('Budget Name', dto.name),
      Guard.againstInvalidDouble('Amount', dto.amount),
      Guard.againstInvalidDouble('Total Expense', dto.totalExpense),
      Guard.againstInvalidDate('Date From', dto.from),
      Guard.againstInvalidDate('Date To', dto.to),
      Guard.againstUndefined('Deleted', dto.deleted),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = BudgetEntity(
      budgetId: dto.budgetId!,
      walletId: dto.walletId!,
      name: dto.name!,
      amount: dto.amount!,
      totalExpense: dto.totalExpense!,
      from: DateTime.parse(dto.from!),
      to: DateTime.parse(dto.to!),
      notes: dto.notes,
      deleted: dto.deleted!,
      deletedBy: dto.deletedBy,
    );

    return Result.ok(data: data);
  }
}
