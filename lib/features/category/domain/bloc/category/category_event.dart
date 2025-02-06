part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getAllCategories(
      {required GetAllCategoriesDto dto}) = _GetAllCategories;

  const factory CategoryEvent.createCategory({required CreateCategoryDto dto}) =
      _CreateCategory;

  const factory CategoryEvent.updateCategory({required UpdateCategoryDto dto}) =
      _UpdateCategory;

  const factory CategoryEvent.deleteCategory({required DeleteCategoryDto dto}) =
      _DeleteCategory;
}
