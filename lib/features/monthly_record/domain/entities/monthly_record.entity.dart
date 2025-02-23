import 'package:equatable/equatable.dart';
import 'package:hani/features/monthly_record/data/dto/monthly_record.dto.dart';

import '../../../../core/result/result.dart';
import '../../../../core/validator/guard.dart';

class MonthlyRecordEntity extends Equatable {
  final String recordId;
  final String walletId;
  final double initialAmount;
  final double spendingAmount;
  final double savingAmount;
  final double income;
  final double expense;
  final double budget;
  final double unbudgeted;
  final String goal;
  final String plan;
  final int month;
  final int year;

  const MonthlyRecordEntity(
      {required this.recordId,
      required this.walletId,
      required this.initialAmount,
      required this.spendingAmount,
      required this.savingAmount,
      required this.income,
      required this.expense,
      required this.budget,
      required this.unbudgeted,
      required this.goal,
      required this.plan,
      required this.month,
      required this.year});

  @override
  List<Object?> get props => [
        recordId,
        walletId,
        initialAmount,
        spendingAmount,
        savingAmount,
        income,
        expense,
        budget,
        unbudgeted,
        goal,
        plan,
        month,
        year,
      ];

  static Result<MonthlyRecordEntity> create(MonthlyRecordDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Record ID', dto.recordId),
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstInvalidDouble('Initial Amount', dto.initialAmount),
      Guard.againstInvalidDouble('Spending Amount', dto.spendingAmount),
      Guard.againstInvalidDouble('Saving Amount', dto.savingAmount),
      Guard.againstInvalidInteger('Month', dto.month),
      Guard.againstInvalidInteger('Year', dto.year),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = MonthlyRecordEntity(
      recordId: dto.recordId!,
      walletId: dto.walletId!,
      initialAmount: dto.initialAmount!,
      spendingAmount: dto.spendingAmount!,
      savingAmount: dto.savingAmount!,
      income: dto.income ?? 0,
      expense: dto.expense ?? 0,
      budget: dto.budget ?? 0,
      unbudgeted: dto.unbudgeted ?? 0,
      goal: dto.goal ?? '',
      plan: dto.plan ?? '',
      month: dto.month!,
      year: dto.year!,
    );

    return Result.ok(data: data);
  }
}
