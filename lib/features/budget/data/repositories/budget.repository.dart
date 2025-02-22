import 'package:hani/core/result/result.dart';
import 'package:hani/core/state_status/error_messages.dart';
import 'package:hani/features/budget/data/datasources/budget_remote.datasource.dart';
import 'package:hani/features/budget/domain/entities/budget.entity.dart';
import 'package:hani/features/budget/domain/repositories/i_budget.repository.dart';
import 'package:hani/features/budget/domain/vo/create_budget.vo.dart';
import 'package:hani/features/budget/domain/vo/delete_budget.vo.dart';
import 'package:hani/features/budget/domain/vo/get_monthly_budget.vo.dart';
import 'package:hani/features/budget/domain/vo/update_budget.vo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IBudgetRepository)
class BudgetRepository implements IBudgetRepository {
  late Logger _logger;
  late BudgetRemoteDatasource _budgetRemoteDatasource;

  BudgetRepository(
      Logger logger, BudgetRemoteDatasource budgetRemoteDatasource) {
    _logger = logger;
    _budgetRemoteDatasource = budgetRemoteDatasource;
  }

  @override
  Future<Result<BudgetEntity>> createBudget(CreateBudgetVo vo) async {
    try {
      final dto = await _budgetRemoteDatasource.createBudget(vo);

      return BudgetEntity.create(dto);
    } catch (e) {
      _logger.e(e.toString());
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  @override
  Future<Result<List<BudgetEntity>>> getMonthlyBudget(
      GetMonthlyBudgetVo vo) async {
    try {
      final dtoList = await _budgetRemoteDatasource.getMonthlyBudget(vo);

      final list = <BudgetEntity>[];

      for (final dto in dtoList) {
        final entityOrError = BudgetEntity.create(dto);
        if (entityOrError.isFailure) {
          _logger.e(entityOrError.getError);
          continue;
        }

        list.add(entityOrError.getValue);
      }

      return Result.ok(data: list);
    } catch (e) {
      _logger.e(e.toString());
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  @override
  Future<Result<BudgetEntity>> updateBudget(UpdateBudgetVo vo) async {
    try {
      final dto = await _budgetRemoteDatasource.updateBudget(vo);

      return BudgetEntity.create(dto);
    } catch (e) {
      _logger.e(e.toString());
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  @override
  Future<Result<BudgetEntity>> deleteBudget(DeleteBudgetVo vo) async {
    try {
      final dto = await _budgetRemoteDatasource.deleteBudget(vo);

      return BudgetEntity.create(dto);
    } catch (e) {
      _logger.e(e.toString());
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }
}
