import 'package:equatable/equatable.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/category/data/dto/get_categories.dto.dart';

class GetAllCategoriesVo extends Equatable {
  final String walletId;

  const GetAllCategoriesVo({
    required this.walletId,
  });

  @override
  List<Object?> get props => [walletId];

  static Result<GetAllCategoriesVo> create(GetAllCategoriesDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Wallet ID', dto.walletId),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = GetAllCategoriesVo(walletId: dto.walletId!);

    return Result.ok(data: data);
  }
}
