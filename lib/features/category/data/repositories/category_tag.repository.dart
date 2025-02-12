import 'package:dartz/dartz.dart';
import 'package:hani/features/category/data/datasources/category_tags_remote.datasource.dart';
import 'package:hani/features/category/domain/entities/category_tag.entity.dart';
import 'package:hani/features/category/domain/vo/create_category_tags_vo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/result/result.dart';
import '../../../../core/state_status/error_messages.dart';
import '../../domain/vo/category_tags_pager.vo.dart';

@lazySingleton
class CategoryTagRepository {
  late Logger _logger;
  late CategoryTagsRemoteDatasource _categoryTagsRemoteDatasource;

  CategoryTagRepository(Logger logger,
      CategoryTagsRemoteDatasource categoryTagsRemoteDatasource) {
    _categoryTagsRemoteDatasource = categoryTagsRemoteDatasource;
    _logger = logger;
  }

  Future<Result<List<CategoryTagEntity>>> getCategoryTagsWithIds(
      List<String> categoryIds) async {
    try {
      if (categoryIds.isEmpty) return const Result.ok(data: []);

      final List<CategoryTagEntity> categoryTags =
          await _getCategoryTags(categoryIds);

      return Result.ok(data: categoryTags);
    } catch (e) {
      _logger.e(e);
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<List<CategoryTagEntity>>> getCategoryTags(
      String categoryId) async {
    try {
      final List<CategoryTagEntity> categoryTags =
          await _getCategoryTags([categoryId]);

      return Result.ok(data: categoryTags);
    } catch (e) {
      _logger.e(e);
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<List<CategoryTagEntity>>> createCategoryTags(
      CreateCategoryTagsVo vo) async {
    try {
      await _categoryTagsRemoteDatasource.createCategoryTags(
          vo.categoryId, vo.tagIds);

      final List<CategoryTagEntity> categoryTags =
          await _getCategoryTags([vo.categoryId]);

      return Result.ok(data: categoryTags);
    } catch (e) {
      _logger.e(e);
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<List<CategoryTagEntity>>> updateCategoryTags(
      CreateCategoryTagsVo vo) async {
    try {
      // Get current category tags
      final List<CategoryTagEntity> currentCategoryTags =
          await _getCategoryTags([vo.categoryId]);

      // Identify which tags needs to remove
      final List<String> categoryTagIds = currentCategoryTags
          .where((categoryTag) => !vo.tagIds.contains(categoryTag.tagId))
          .map((e) => e.categoryTagId)
          .toList();

      await _categoryTagsRemoteDatasource.deleteCategoryTags(
          vo.categoryId, categoryTagIds);

      // Identify which tags needs to add
      final List<String> tagIds = vo.tagIds
          .where((tagId) =>
              !currentCategoryTags.map((e) => e.tagId).contains(tagId))
          .toList();

      await _categoryTagsRemoteDatasource.createCategoryTags(
          vo.categoryId, tagIds);

      // Get updated category tags
      final List<CategoryTagEntity> categoryTags =
          await _getCategoryTags([vo.categoryId]);

      return Result.ok(data: categoryTags);
    } catch (e) {
      _logger.e(e);
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<Result<Unit>> deleteCategoryTags(String categoryId) async {
    try {
      // Get current category tags
      final List<CategoryTagEntity> currentCategoryTags =
          await _getCategoryTags([categoryId]);

      final List<String> categoryTagIds =
          currentCategoryTags.map((e) => e.categoryTagId).toList();

      // Delete all category tags
      await _categoryTagsRemoteDatasource.deleteCategoryTags(
          categoryId, categoryTagIds);

      return const Result.ok(data: unit);
    } catch (e) {
      _logger.e(e);
      return const Result.fail(error: ErrorMessages.somethingWentWrong);
    }
  }

  Future<List<CategoryTagEntity>> _getCategoryTags(
      List<String> categoryIds) async {
    const limit = 100;
    int maxPage = -1;
    int page = 1;

    final List<CategoryTagEntity> categoryTags = [];

    while (maxPage == -1 || maxPage > page) {
      final dto = await _categoryTagsRemoteDatasource.getCategoryTags(
          categoryIds, page, limit);

      final pagerOrError = CategoryTagsPagerVo.create(dto);
      if (pagerOrError.isFailure) {
        _logger.e(pagerOrError.getError);
        continue;
      }
      final pager = pagerOrError.getValue;

      if (maxPage == -1) {
        maxPage = pager.mexPage;
      }

      final List<CategoryTagEntity> entities = pager.categoryTags;

      categoryTags.addAll(entities);

      page++;
    }

    return categoryTags;
  }
}
