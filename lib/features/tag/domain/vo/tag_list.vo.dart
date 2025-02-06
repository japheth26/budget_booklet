import 'package:equatable/equatable.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/tag/data/dto/tag_list.dto.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';
import 'package:logger/logger.dart';

import '../entities/tag.entity.dart';

class TagListVo extends Equatable {
  final int currentPage;
  final int maxPage;
  final String transactionType;
  final List<TagEntity> tags;

  const TagListVo(
      {required this.currentPage,
      required this.maxPage,
      required this.transactionType,
      required this.tags});

  @override
  List<Object?> get props => [currentPage, maxPage, transactionType, tags];

  static Result<TagListVo> create(TagListDto dto) {
    final Logger logger = getIt<Logger>();
    final guardResult = Guard.combine([
      Guard.againstUndefined('Current Page', dto.currentPage),
      Guard.againstUndefined('Max Page', dto.maxPage),
      Guard.againstInvalidArrayItem(
          'Transaction Type', TransactionType.values, dto.transactionType),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final List<TagEntity> tags = [];

    for (final tagDto in dto.tags ?? []) {
      final entityOrError = TagEntity.create(tagDto);

      if (entityOrError.isFailure) {
        logger.e(entityOrError.getError);
        continue;
      }

      tags.add(entityOrError.getValue);
    }

    final data = TagListVo(
        currentPage: dto.currentPage!,
        maxPage: dto.maxPage!,
        transactionType: dto.transactionType!,
        tags: tags);

    return Result.ok(data: data);
  }
}
