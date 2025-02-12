import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/features/category/data/dto/create_category.dto.dart';
import 'package:hani/features/category/data/dto/get_categories.dto.dart';
import 'package:hani/features/category/data/repositories/category.repository.dart';
import 'package:hani/features/category/data/repositories/category_tag.repository.dart';
import 'package:hani/features/category/domain/entities/category_tag.entity.dart';
import 'package:hani/features/category/domain/vo/create_category.vo.dart';
import 'package:hani/features/category/domain/vo/delete_category.vo.dart';
import 'package:hani/features/category/domain/vo/get_categories.vo.dart';
import 'package:hani/features/category/domain/vo/update_category.vo.dart';
import 'package:injectable/injectable.dart';

import '../../../../tag/domain/entities/tag.entity.dart';
import '../../../../wallet/domain/entity/wallet.entity.dart';
import '../../../data/dto/create_category_tags.dto.dart';
import '../../../data/dto/delete_category.dto.dart';
import '../../../data/dto/update_category.dto.dart';
import '../../../presentation/templates/category/category_param.dart';
import '../../entities/category.entity.dart';
import '../../vo/create_category_tags_vo.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@lazySingleton
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(CategoryRepository categoryRepository,
      CategoryTagRepository categoryTagRepository)
      : super(CategoryState.initial()) {
    on<_GetAllCategories>((event, emit) async {
      emit(CategoryState.loading(state));

      final voOrError = GetAllCategoriesVo.create(event.dto);

      if (voOrError.isFailure) {
        emit(CategoryState.error(state, voOrError.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      final result =
          await categoryRepository.getAllCategories(voOrError.getValue);

      if (result.isFailure) {
        emit(CategoryState.error(state, result.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      emit(CategoryState.saveAllCategories(state, result.getValue));

      add(const CategoryEvent.getAllCategoryTagsByCategoryId());
    });

    on<_GetAllCategoryTagsByCategoryId>((event, emit) async {
      final categoryIds = [
        ...state.incomeCategories,
        ...state.expenseCategories
      ].map((e) => e.categoryId).toList();

      final result =
          await categoryTagRepository.getCategoryTagsWithIds(categoryIds);

      if (result.isFailure) {
        emit(CategoryState.error(state, result.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      emit(CategoryState.saveTagsByCategoryId(state, result.getValue));
      emit(state.copyWith(retrieved: true));
      emit(state.copyWith(retrieved: false));
      emit(CategoryState.loaded(state));
    });

    on<_CreateCategory>((event, emit) async {
      emit(CategoryState.loading(state));

      final voOrError = CreateCategoryVo.create(event.dto);

      if (voOrError.isFailure) {
        emit(CategoryState.error(state, voOrError.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      final categoryOrError =
          await categoryRepository.createCategory(voOrError.getValue);

      if (categoryOrError.isFailure) {
        emit(CategoryState.error(state, categoryOrError.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      emit(CategoryState.addCategory(state, categoryOrError.getValue));
      add(
        CategoryEvent.createCategoryTags(
          dto: CreateCategoryTagsDto(
            categoryId: categoryOrError.getValue.categoryId,
            tagIds: state.selectedTagIds,
          ),
        ),
      );
    });

    on<_CreateCategoryTags>((event, emit) async {
      emit(CategoryState.loading(state));

      final voOrError = CreateCategoryTagsVo.create(event.dto);

      if (voOrError.isFailure) {
        emit(CategoryState.error(state, voOrError.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      final categoryId = voOrError.getValue.categoryId;

      final result =
          await categoryTagRepository.createCategoryTags(voOrError.getValue);

      if (result.isFailure) {
        emit(CategoryState.error(state, result.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      emit(CategoryState.updateTagsByCategoryId(
          state, categoryId, result.getValue));
      emit(state.copyWith(updated: true));
      emit(state.copyWith(updated: false));
      emit(CategoryState.success(state, 'Category successfully created!'));
      emit(CategoryState.loaded(state));
    });

    on<_UpdateCategory>((event, emit) async {
      emit(CategoryState.loading(state));

      final voOrError = UpdateCategoryVo.create(event.dto);

      if (voOrError.isFailure) {
        emit(CategoryState.error(state, voOrError.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      final result =
          await categoryRepository.updateCategory(voOrError.getValue);

      if (result.isFailure) {
        emit(CategoryState.error(state, result.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      emit(CategoryState.updateCategory(state, result.getValue));
      add(CategoryEvent.updateCategoryTags(
          dto: CreateCategoryTagsDto(
        categoryId: result.getValue.categoryId,
        tagIds: state.selectedTagIds,
      )));
    });

    on<_UpdateCategoryTags>((event, emit) async {
      emit(CategoryState.loading(state));

      final voOrError = CreateCategoryTagsVo.create(event.dto);

      if (voOrError.isFailure) {
        emit(CategoryState.error(state, voOrError.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      final categoryId = voOrError.getValue.categoryId;

      final result =
          await categoryTagRepository.updateCategoryTags(voOrError.getValue);

      if (result.isFailure) {
        emit(CategoryState.error(state, result.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      emit(CategoryState.updateTagsByCategoryId(
          state, categoryId, result.getValue));
      emit(state.copyWith(updated: true));
      emit(state.copyWith(updated: false));
      emit(CategoryState.success(state, 'Category successfully updated!'));
      emit(CategoryState.loaded(state));
    });

    on<_DeleteCategory>((event, emit) async {
      emit(CategoryState.loading(state));

      final voOrError = DeleteCategoryVo.create(event.dto);

      if (voOrError.isFailure) {
        emit(CategoryState.error(state, voOrError.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      final result =
          await categoryRepository.deleteCategory(voOrError.getValue);

      if (result.isFailure) {
        emit(CategoryState.error(state, result.getError));
        emit(CategoryState.loaded(state));
        return;
      }

      emit(CategoryState.updateCategory(state, result.getValue));
      emit(state.copyWith(updated: true));
      emit(state.copyWith(updated: false));
      emit(CategoryState.success(state, 'Category successfully deleted!'));
      emit(CategoryState.loaded(state));
    });

    on<_SaveSelectedTagIds>((event, emit) {
      emit(CategoryState.saveSelectedTagIds(state, event.tagIds));
    });

    on<_ClearSelectedTagIds>((event, emit) {
      emit(CategoryState.clearSelectedTagIds(state));
    });
  }
}
