import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_tag.dto.freezed.dart';
part 'category_tag.dto.g.dart';

@freezed
class CategoryTagDto with _$CategoryTagDto {
  const factory CategoryTagDto({
    String? categoryTagId,
    String? categoryId,
    String? tagId,
  }) = _CategoryTagDto;

  const CategoryTagDto._();

  factory CategoryTagDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryTagDtoFromJson(json);
}
