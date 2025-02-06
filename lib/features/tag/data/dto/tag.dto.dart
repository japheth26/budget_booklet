import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.dto.freezed.dart';
part 'tag.dto.g.dart';

@freezed
class TagDto with _$TagDto {
  const factory TagDto({
    String? tagId,
    String? label,
    int? color,
    bool? deleted,
    String? walletId,
    String? transactionType,
    String? createdBy,
    String? deletedBy,
  }) = _TagDto;

  const TagDto._();

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);
}
