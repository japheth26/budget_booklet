import 'package:equatable/equatable.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/tag/data/dto/get_all_tags.dto.dart';

class GetAllTagsVo extends Equatable {
  final String walletId;

  const GetAllTagsVo({
    required this.walletId,
  });

  @override
  List<Object?> get props => [walletId];

  static Result<GetAllTagsVo> create(GetAllTagsDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Wallet ID', dto.walletId),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = GetAllTagsVo(walletId: dto.walletId!);

    return Result.ok(data: data);
  }
}
