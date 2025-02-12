import 'package:hani/features/category/data/datasources/category_remote.datasource.dart';
import 'package:hani/features/category/data/dto/category.dto.dart';
import 'package:hani/features/category/domain/entities/category.entity.dart';
import 'package:hani/features/category/domain/vo/create_category.vo.dart';
import 'package:hani/features/category/domain/vo/delete_category.vo.dart';
import 'package:hani/features/category/domain/vo/get_categories.vo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/result/result.dart';
import '../../../../core/state_status/error_messages.dart';
import '../../domain/vo/update_category.vo.dart';
import '../datasources/category_tags_remote.datasource.dart';

@lazySingleton
class CategoryRepository {
  late Logger _logger;
  late CategoryRemoteDatasource _categoryRemoteDatasource;

  CategoryRepository(
      Logger logger,
      CategoryRemoteDatasource categoryRemoteDatasource,
      CategoryTagsRemoteDatasource categoryTagsRemoteDatasource) {
    _logger = logger;
    _categoryRemoteDatasource = categoryRemoteDatasource;
  }

  Future<Result<List<CategoryEntity>>> getAllCategories(
      GetAllCategoriesVo vo) async {
    try {
      const limit = 100;
      int maxPage = -1;
      int page = 1;

      final List<CategoryEntity> categories = [];

      while (maxPage == -1 || maxPage > page) {
        final result = await _categoryRemoteDatasource.getCategories(
            vo.walletId, page, limit);

        if (maxPage == -1) {
          maxPage = (result.total / limit).ceil();
        }

        final List<CategoryDto> categoriesDto =
            result.documents.map((e) => CategoryDto.fromJson(e.data)).toList();

        for (final categoryDto in categoriesDto) {
          final entityOrError = CategoryEntity.create(categoryDto);

          if (entityOrError.isFailure) {
            _logger.e(entityOrError.getError);
            continue;
          }

          categories.add(entityOrError.getValue);
        }

        page++;
      }

      return Result.ok(data: categories);
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<CategoryEntity>> createCategory(CreateCategoryVo vo) async {
    try {
      final result = await _categoryRemoteDatasource.createCategory(vo);

      return CategoryEntity.create(CategoryDto.fromJson(result.data));
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<CategoryEntity>> updateCategory(UpdateCategoryVo vo) async {
    try {
      final result = await _categoryRemoteDatasource.updateCategory(vo);

      return CategoryEntity.create(CategoryDto.fromJson(result.data));
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<CategoryEntity>> deleteCategory(DeleteCategoryVo vo) async {
    try {
      final result = await _categoryRemoteDatasource.deleteCategory(vo);

      return CategoryEntity.create(CategoryDto.fromJson(result.data));
    } catch (e) {
      _logger.e(e.toString());

      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }
}
