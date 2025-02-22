import 'package:equatable/equatable.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/budget/data/dto/delete_budget.dto.dart';

import '../../../../core/result/result.dart';

class DeleteBudgetVo extends Equatable {
  final String budgetId;
  final String userId;

  const DeleteBudgetVo({required this.budgetId, required this.userId});

  @override
  List<Object?> get props => [
        budgetId,
        userId,
      ];

  static Result<DeleteBudgetVo> create(DeleteBudgetDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Budget ID', dto.budgetId),
      Guard.againstEmptyString('User ID', dto.userId),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = DeleteBudgetVo(budgetId: dto.budgetId!, userId: dto.userId!);

    return Result.ok(data: data);
  }
}
