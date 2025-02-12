part of 'tag_bloc.dart';

@freezed
class TagEvent with _$TagEvent {
  const factory TagEvent.getAllTags({required GetAllTagsDto dto}) = _GetAllTags;

  const factory TagEvent.createTag({required CreateTagDto dto}) = _CreateTag;

  const factory TagEvent.updateTag({required UpdateTagDto dto}) = _UpdateTag;

  const factory TagEvent.deleteTag({required DeleteTagDto dto}) = _DeleteTag;

  const factory TagEvent.selectTag({required String tagId}) = _SelectTag;

  const factory TagEvent.removeTag({required String tagId}) = _RemoveTag;

  const factory TagEvent.clearSelectedTags() = _ClearSelectedTags;

  const factory TagEvent.saveSelectedTags(
      {required List<String> selectedTags}) = _SaveSelectedTags;
}
