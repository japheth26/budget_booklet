import 'package:equatable/equatable.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/category/data/dto/delete_category.dto.dart';

class DeleteCategoryVo extends Equatable {
  final String categoryId;
  final String userId;

  const DeleteCategoryVo({
    required this.categoryId,
    required this.userId,
  });

  @override
  List<Object?> get props => [categoryId, userId];

  static Result<DeleteCategoryVo> create(DeleteCategoryDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Category ID', dto.categoryId),
      Guard.againstEmptyString('User ID', dto.userId),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = DeleteCategoryVo(
      categoryId: dto.categoryId!,
      userId: dto.userId!,
    );

    return Result.ok(data: data);
  }
}
