import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/category/data/dto/category_list.dto.dart';
import 'package:hani/features/category/domain/entities/category.entity.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';
import 'package:logger/logger.dart';

class CategoryListVo extends Equatable {
  final int currentPage;
  final int maxPage;
  final String transactionType;
  final List<CategoryEntity> categories;

  const CategoryListVo(
      {required this.currentPage,
      required this.maxPage,
      required this.transactionType,
      required this.categories});

  @override
  List<Object?> get props => [currentPage, maxPage, categories];

  static Result<CategoryListVo> create(CategoryListDto dto) {
    final Logger logger = getIt<Logger>();
    final guardResult = Guard.combine([
      Guard.againstUndefined('Current Page', dto.currentPage),
      Guard.againstInvalidArrayItem(
          'Transaction Type', TransactionType.values, dto.transactionType),
      Guard.againstUndefined('Max Page', dto.maxPage),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final List<CategoryEntity> categories = [];

    for (final categoryDto in dto.categories ?? []) {
      final entityOrError = CategoryEntity.create(categoryDto);

      if (entityOrError.isFailure) {
        logger.e(entityOrError.getError);
        continue;
      }

      categories.add(entityOrError.getValue);
    }

    final data = CategoryListVo(
        currentPage: dto.currentPage!,
        maxPage: dto.maxPage!,
        transactionType: dto.transactionType!,
        categories: categories);

    return Result.ok(data: data);
  }
}
