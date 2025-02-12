import 'package:equatable/equatable.dart';
import 'package:hani/features/category/data/dto/category_tags_pager.dto.dart';
import 'package:hani/features/category/domain/entities/category_tag.entity.dart';
import 'package:logger/logger.dart';

import '../../../../core/result/result.dart';
import '../../../../core/validator/guard.dart';

class CategoryTagsPagerVo extends Equatable {
  final int page;
  final int mexPage;
  final List<CategoryTagEntity> categoryTags;

  const CategoryTagsPagerVo(
      {required this.page, required this.mexPage, required this.categoryTags});

  @override
  List<Object?> get props => [page, mexPage, categoryTags];

  static Result<CategoryTagsPagerVo> create(CategoryTagsPagerDto dto) {
    final Logger logger = Logger();

    final guardResult = Guard.combine([
      Guard.againstUndefined('Page', dto.page),
      Guard.againstUndefined('Max Page', dto.maxPage),
      Guard.againstUndefined('Category Tags', dto.categoryTags),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final List<CategoryTagEntity> categoryTags = [];

    for (final categoryTagDto in dto.categoryTags ?? []) {
      final entityOrError = CategoryTagEntity.create(categoryTagDto);

      if (entityOrError.isFailure) {
        logger.e(entityOrError.getError);
        continue;
      }

      categoryTags.add(entityOrError.getValue);
    }

    final data = CategoryTagsPagerVo(
      page: dto.page!,
      mexPage: dto.maxPage!,
      categoryTags: categoryTags,
    );

    return Result.ok(data: data);
  }
}
