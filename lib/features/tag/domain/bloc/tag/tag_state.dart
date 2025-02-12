part of 'tag_bloc.dart';

@freezed
class TagState with _$TagState {
  const factory TagState({
    required StateStatus stateStatus,
    required String errorMessage,
    required String successMessage,
    required List<TagEntity> incomeTags,
    required List<TagEntity> expenseTags,
    required bool retrieved,
    required bool added,
    required List<String> selectedTags,
  }) = _TagState;

  factory TagState.initial() => const TagState(
        stateStatus: StateStatus.initial,
        errorMessage: '',
        successMessage: '',
        incomeTags: [],
        expenseTags: [],
        retrieved: false,
        added: false,
        selectedTags: [],
      );

  factory TagState.loading(TagState state) =>
      state.copyWith(stateStatus: StateStatus.loading);

  factory TagState.error(TagState state, String errorMessage) => state.copyWith(
        stateStatus: StateStatus.error,
        errorMessage: errorMessage,
      );

  factory TagState.success(TagState state, String successMessage) =>
      state.copyWith(
        stateStatus: StateStatus.success,
        successMessage: successMessage,
      );

  factory TagState.loaded(TagState state) =>
      state.copyWith(stateStatus: StateStatus.loaded);

  factory TagState.saveAllTags(TagState state, List<TagEntity> tags) {
    return state.copyWith(
      incomeTags: tags
          .where((e) => e.transactionType == TransactionType.income)
          .toList(),
      expenseTags: tags
          .where((e) => e.transactionType == TransactionType.expense)
          .toList(),
    );
  }

  factory TagState.addTag(TagState state, TagEntity tag) {
    final incomeTags = [...state.incomeTags];
    final expenseTags = [...state.expenseTags];

    if (tag.transactionType == TransactionType.income) {
      incomeTags.add(tag);
    }

    if (tag.transactionType == TransactionType.expense) {
      expenseTags.add(tag);
    }

    return state.copyWith(
      incomeTags: incomeTags,
      expenseTags: expenseTags,
    );
  }

  factory TagState.updateTag(TagState state, TagEntity tag) {
    final incomeTags = [...state.incomeTags];
    final expenseTags = [...state.expenseTags];

    if (tag.transactionType == TransactionType.income) {
      final index = incomeTags.indexWhere((e) => e.tagId == tag.tagId);

      if (index != -1) {
        incomeTags.replaceRange(index, index + 1, [tag]);
      }
    }

    if (tag.transactionType == TransactionType.expense) {
      final index = expenseTags.indexWhere((e) => e.tagId == tag.tagId);

      if (index != -1) {
        expenseTags.replaceRange(index, index + 1, [tag]);
      }
    }

    return state.copyWith(
      incomeTags: incomeTags,
      expenseTags: expenseTags,
    );
  }

  factory TagState.saveSelectedTags(TagState state, List<String> selectedTags) {
    return state.copyWith(selectedTags: selectedTags);
  }

  factory TagState.selectTag(TagState state, String selectedTag) {
    List<String> currentSelectedTags = [...state.selectedTags];

    currentSelectedTags.add(selectedTag);

    currentSelectedTags = currentSelectedTags.toSet().toList();

    return state.copyWith(selectedTags: currentSelectedTags);
  }

  factory TagState.removeTag(TagState state, String selectedTag) {
    List<String> currentSelectedTags = [...state.selectedTags];

    currentSelectedTags.removeWhere((e) => e == selectedTag);

    return state.copyWith(selectedTags: currentSelectedTags);
  }

  factory TagState.clearSelectedTags(TagState state) {
    return state.copyWith(selectedTags: []);
  }
}
