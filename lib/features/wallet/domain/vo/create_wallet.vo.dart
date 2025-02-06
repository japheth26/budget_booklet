import 'package:equatable/equatable.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/wallet/data/dto/create_wallet.dto.dart';

class CreateWalletVo extends Equatable {
  final String name;
  final double initial;
  final String createdBy;

  const CreateWalletVo({
    required this.name,
    required this.initial,
    required this.createdBy,
  });

  @override
  List<Object?> get props => [name, initial];

  static Result<CreateWalletVo> create(CreateWalletDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Name', dto.name),
      Guard.againstUndefined('Initial Amount', dto.initial),
      Guard.againstEmptyString('Created By ID', dto.createdBy),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = CreateWalletVo(
      name: dto.name!,
      initial: dto.initial!,
      createdBy: dto.createdBy!,
    );

    return Result.ok(data: data);
  }
}
