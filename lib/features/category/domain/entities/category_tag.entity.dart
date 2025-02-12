import 'package:equatable/equatable.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/category/data/dto/category_tag.dto.dart';

import '../../../../core/result/result.dart';

class CategoryTagEntity extends Equatable {
  final String categoryTagId;
  final String categoryId;
  final String tagId;

  const CategoryTagEntity(
      {required this.categoryTagId,
      required this.categoryId,
      required this.tagId});

  @override
  List<Object?> get props => [categoryTagId, categoryId, tagId];

  static Result<CategoryTagEntity> create(CategoryTagDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Category Tag ID', dto.categoryTagId),
      Guard.againstEmptyString('Category ID', dto.categoryId),
      Guard.againstEmptyString('Tag ID', dto.tagId),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = CategoryTagEntity(
      categoryTagId: dto.categoryTagId!,
      categoryId: dto.categoryId!,
      tagId: dto.tagId!,
    );

    return Result.ok(data: data);
  }
}
