import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/tag/data/dto/create_tag.dto.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';

import '../../../../core/result/result.dart';

part 'create_tag.vo.freezed.dart';
part 'create_tag.vo.g.dart';

@freezed
@JsonSerializable(createFactory: false)
class CreateTagVo with _$CreateTagVo {
  const factory CreateTagVo({
    required String label,
    required int color,
    required String walletId,
    required String transactionType,
    required String createdBy,
  }) = _CreateTagVo;

  const CreateTagVo._();

  Map<String, dynamic> toJson() => _$CreateTagVoToJson(this);

  static Result<CreateTagVo> create(CreateTagDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Label', dto.label),
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstUndefined('Color', dto.color),
      Guard.againstInvalidArrayItem(
          'Transaction Type', TransactionType.values, dto.transactionType),
      Guard.againstEmptyString('Created By', dto.createdBy),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = CreateTagVo(
      label: dto.label!,
      color: dto.color!,
      walletId: dto.walletId!,
      transactionType: dto.transactionType!,
      createdBy: dto.createdBy!,
    );

    return Result.ok(data: data);
  }
}
