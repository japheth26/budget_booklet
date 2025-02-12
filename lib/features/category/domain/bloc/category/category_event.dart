part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getAllCategories(
      {required GetAllCategoriesDto dto}) = _GetAllCategories;

  const factory CategoryEvent.getAllCategoryTagsByCategoryId() =
      _GetAllCategoryTagsByCategoryId;

  const factory CategoryEvent.createCategory({required CreateCategoryDto dto}) =
      _CreateCategory;

  const factory CategoryEvent.createCategoryTags(
      {required CreateCategoryTagsDto dto}) = _CreateCategoryTags;

  const factory CategoryEvent.updateCategory({required UpdateCategoryDto dto}) =
      _UpdateCategory;

  const factory CategoryEvent.updateCategoryTags(
      {required CreateCategoryTagsDto dto}) = _UpdateCategoryTags;

  const factory CategoryEvent.deleteCategory({required DeleteCategoryDto dto}) =
      _DeleteCategory;

  const factory CategoryEvent.saveSelectedTagIds(
      {required List<String> tagIds}) = _SaveSelectedTagIds;

  const factory CategoryEvent.clearSelectedTagIds() = _ClearSelectedTagIds;
}
