import 'package:equatable/equatable.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/category/data/dto/create_category_tags.dto.dart';

class CreateCategoryTagsVo extends Equatable {
  final String categoryId;
  final List<String> tagIds;

  const CreateCategoryTagsVo({required this.categoryId, required this.tagIds});

  @override
  List<Object?> get props => [categoryId, tagIds];

  static Result<CreateCategoryTagsVo> create(CreateCategoryTagsDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Category ID', dto.categoryId),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = CreateCategoryTagsVo(
      categoryId: dto.categoryId!,
      tagIds: dto.tagIds ?? [],
    );

    return Result.ok(data: data);
  }
}
