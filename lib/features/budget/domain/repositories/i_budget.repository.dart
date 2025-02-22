import 'package:hani/features/budget/domain/entities/budget.entity.dart';
import 'package:hani/features/budget/domain/vo/create_budget.vo.dart';
import 'package:hani/features/budget/domain/vo/delete_budget.vo.dart';
import 'package:hani/features/budget/domain/vo/get_monthly_budget.vo.dart';

import '../../../../core/result/result.dart';
import '../vo/update_budget.vo.dart';

abstract class IBudgetRepository {
  Future<Result<List<BudgetEntity>>> getMonthlyBudget(GetMonthlyBudgetVo vo);

  Future<Result<BudgetEntity>> createBudget(CreateBudgetVo vo);

  Future<Result<BudgetEntity>> updateBudget(UpdateBudgetVo vo);

  Future<Result<BudgetEntity>> deleteBudget(DeleteBudgetVo vo);
}
