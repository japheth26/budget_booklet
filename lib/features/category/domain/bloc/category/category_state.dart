part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required StateStatus stateStatus,
    required String errorMessage,
    required String successMessage,
    required List<CategoryEntity> incomeCategories,
    required List<CategoryEntity> expenseCategories,
    required bool retrieved,
    required bool updated,
    required List<String> selectedTagIds,
    required Map<String, List<CategoryTagEntity>> tagsByCategoryId,
  }) = _CategoryState;

  factory CategoryState.initial() => const CategoryState(
        stateStatus: StateStatus.initial,
        errorMessage: '',
        successMessage: '',
        incomeCategories: [],
        expenseCategories: [],
        retrieved: false,
        updated: false,
        selectedTagIds: [],
        tagsByCategoryId: {},
      );

  factory CategoryState.loading(CategoryState state) =>
      state.copyWith(stateStatus: StateStatus.loading);

  factory CategoryState.error(CategoryState state, String errorMessage) =>
      state.copyWith(
        stateStatus: StateStatus.error,
        errorMessage: errorMessage,
      );

  factory CategoryState.success(CategoryState state, String successMessage) =>
      state.copyWith(
        stateStatus: StateStatus.success,
        successMessage: successMessage,
      );

  factory CategoryState.loaded(CategoryState state) =>
      state.copyWith(stateStatus: StateStatus.loaded);

  factory CategoryState.saveAllCategories(
      CategoryState state, List<CategoryEntity> categories) {
    return state.copyWith(
      incomeCategories: categories
          .where((e) => e.transactionType == TransactionType.income)
          .toList(),
      expenseCategories: categories
          .where((e) => e.transactionType == TransactionType.expense)
          .toList(),
    );
  }

  factory CategoryState.addCategory(
      CategoryState state, CategoryEntity category) {
    final incomeCategories = [...state.incomeCategories];
    final expenseCategories = [...state.expenseCategories];

    if (category.transactionType == TransactionType.income) {
      incomeCategories.add(category);
    }

    if (category.transactionType == TransactionType.expense) {
      expenseCategories.add(category);
    }

    return state.copyWith(
      incomeCategories: incomeCategories,
      expenseCategories: expenseCategories,
    );
  }

  factory CategoryState.updateCategory(
      CategoryState state, CategoryEntity category) {
    final incomeCategories = [...state.incomeCategories];
    final expenseCategories = [...state.expenseCategories];

    if (category.transactionType == TransactionType.income) {
      final index = incomeCategories
          .indexWhere((e) => e.categoryId == category.categoryId);

      if (index != -1) {
        incomeCategories.replaceRange(index, index + 1, [category]);
      }
    }

    if (category.transactionType == TransactionType.expense) {
      final index = expenseCategories
          .indexWhere((e) => e.categoryId == category.categoryId);

      if (index != -1) {
        expenseCategories.replaceRange(index, index + 1, [category]);
      }
    }

    return state.copyWith(
      incomeCategories: incomeCategories,
      expenseCategories: expenseCategories,
    );
  }

  factory CategoryState.saveSelectedTagIds(
      CategoryState state, List<String> tagIds) {
    return state.copyWith(selectedTagIds: tagIds);
  }

  factory CategoryState.clearSelectedTagIds(CategoryState state) {
    return state.copyWith(selectedTagIds: []);
  }

  factory CategoryState.saveTagsByCategoryId(
      CategoryState state, List<CategoryTagEntity> categoryTags) {
    final categoryIds = categoryTags.map((e) => e.categoryId).toSet().toList();

    final Map<String, List<CategoryTagEntity>> tagsByCategoryId = {};

    for (final categoryId in categoryIds) {
      tagsByCategoryId[categoryId] =
          categoryTags.where((e) => e.categoryId == categoryId).toList();
    }

    return state.copyWith(tagsByCategoryId: tagsByCategoryId);
  }

  factory CategoryState.updateTagsByCategoryId(CategoryState state,
      String categoryId, List<CategoryTagEntity> categoryTags) {
    return state.copyWith(
      tagsByCategoryId: {
        ...state.tagsByCategoryId,
        categoryId: categoryTags,
      },
    );
  }
}
