import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.dto.freezed.dart';
part 'category.dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const factory CategoryDto({
    String? categoryId,
    String? label,
    String? icon,
    int? color,
    bool? deleted,
    String? walletId,
    String? createdBy,
    String? deletedBy,
    String? transactionType,
  }) = _CategoryDto;

  const CategoryDto._();

  factory CategoryDto.fromJson(json) => _$CategoryDtoFromJson(json);
}
