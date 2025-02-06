import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/category/data/dto/update_category.dto.dart';

part 'update_category.vo.freezed.dart';
part 'update_category.vo.g.dart';

@freezed
@JsonSerializable(createFactory: false)
class UpdateCategoryVo with _$UpdateCategoryVo {
  const factory UpdateCategoryVo({
    required String categoryId,
    required String label,
    required String icon,
    required int color,
  }) = _UpdateCategoryVo;

  const UpdateCategoryVo._();

  Map<String, dynamic> toJson() => _$UpdateCategoryVoToJson(this);

  static Result<UpdateCategoryVo> create(UpdateCategoryDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Category ID', dto.categoryId),
      Guard.againstEmptyString('Label', dto.label),
      Guard.againstEmptyString('Icon', dto.icon),
      Guard.againstUndefined('Color', dto.color),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = UpdateCategoryVo(
      categoryId: dto.categoryId!,
      label: dto.label!,
      icon: dto.icon!,
      color: dto.color!,
    );

    return Result.ok(data: data);
  }
}
