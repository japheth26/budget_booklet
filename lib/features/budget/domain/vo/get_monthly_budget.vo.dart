import 'package:equatable/equatable.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/budget/data/dto/get_monthly_budget.dto.dart';

import '../../../../core/result/result.dart';

class GetMonthlyBudgetVo extends Equatable {
  final String walletId;
  final String from;
  final String to;

  const GetMonthlyBudgetVo({
    required this.walletId,
    required this.from,
    required this.to,
  });

  @override
  List<Object?> get props => [
        walletId,
        from,
        to,
      ];

  static Result<GetMonthlyBudgetVo> create(GetMonthlyBudgetDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstUndefined('Date From', dto.from),
      Guard.againstUndefined('Date To', dto.to),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = GetMonthlyBudgetVo(
      walletId: dto.walletId!,
      from: dto.from!.toIso8601String(),
      to: dto.to!.toIso8601String(),
    );

    return Result.ok(data: data);
  }
}
