import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/category/data/dto/create_category.dto.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';

part 'create_category.vo.freezed.dart';
part 'create_category.vo.g.dart';

@freezed
@JsonSerializable(createFactory: false)
class CreateCategoryVo with _$CreateCategoryVo {
  const factory CreateCategoryVo({
    required String walletId,
    required String label,
    required String icon,
    required String transactionType,
    required int color,
    required String createdBy,
  }) = _CreateCategoryVo;

  const CreateCategoryVo._();

  Map<String, dynamic> toJson() => _$CreateCategoryVoToJson(this);

  static Result<CreateCategoryVo> create(CreateCategoryDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstEmptyString('Label', dto.label),
      Guard.againstEmptyString('Icon', dto.icon),
      Guard.againstInvalidArrayItem(
          'Transaction Type', TransactionType.values, dto.transactionType),
      Guard.againstUndefined('Color', dto.color),
      Guard.againstEmptyString('Created By', dto.createdBy),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = CreateCategoryVo(
      walletId: dto.walletId!,
      label: dto.label!,
      icon: dto.icon!,
      transactionType: dto.transactionType!,
      color: dto.color!,
      createdBy: dto.createdBy!,
    );

    return Result.ok(data: data);
  }
}
