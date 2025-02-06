import 'package:equatable/equatable.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/tag/data/dto/delete_tag.dto.dart';

import '../../../../core/result/result.dart';

class DeleteTagVo extends Equatable {
  final String tagId;
  final String userId;

  const DeleteTagVo({required this.tagId, required this.userId});

  @override
  List<Object?> get props => [tagId, userId];

  static Result<DeleteTagVo> create(DeleteTagDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Tag ID', dto.tagId),
      Guard.againstEmptyString('User ID', dto.userId),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = DeleteTagVo(tagId: dto.tagId!, userId: dto.userId!);

    return Result.ok(data: data);
  }
}
