import 'package:equatable/equatable.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/tag/data/dto/update_tag.dto.dart';

import '../../../../core/result/result.dart';

class UpdateTagVo extends Equatable {
  final String tagId;
  final String label;
  final int color;

  const UpdateTagVo(
      {required this.tagId, required this.label, required this.color});

  @override
  List<Object?> get props => [
        tagId,
        label,
        color,
      ];

  static Result<UpdateTagVo> create(UpdateTagDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Label', dto.label),
      Guard.againstEmptyString('Tag ID', dto.tagId),
      Guard.againstUndefined('Color', dto.color),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data =
        UpdateTagVo(tagId: dto.tagId!, label: dto.label!, color: dto.color!);

    return Result.ok(data: data);
  }
}
