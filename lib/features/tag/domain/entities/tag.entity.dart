import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/tag/data/dto/tag.dto.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';

class TagEntity extends Equatable {
  final String tagId;
  final String label;
  final Color color;
  final bool deleted;
  final String walletId;
  final String transactionType;
  final String createdBy;
  final String? deletedBy;

  const TagEntity({
    required this.tagId,
    required this.label,
    required this.color,
    required this.deleted,
    required this.walletId,
    required this.transactionType,
    required this.createdBy,
    this.deletedBy,
  });

  @override
  List<Object?> get props => [
        tagId,
        label,
        color,
        deleted,
        walletId,
        transactionType,
        createdBy,
        deletedBy,
      ];

  static Result<TagEntity> create(TagDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Tag ID', dto.tagId),
      Guard.againstEmptyString('Label', dto.label),
      Guard.againstUndefined('Color', dto.color),
      Guard.againstUndefined('Deleted Status', dto.deleted),
      Guard.againstEmptyString('Wallet Id', dto.walletId),
      Guard.againstInvalidArrayItem(
          'Transaction Type', TransactionType.values, dto.transactionType),
      Guard.againstEmptyString('Created By', dto.createdBy),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    late Color color;

    try {
      color = Color(dto.color!);
    } catch (e) {
      color = Colors.blue;
    }

    final data = TagEntity(
      tagId: dto.tagId!,
      label: dto.label!,
      color: color,
      deleted: dto.deleted!,
      walletId: dto.walletId!,
      transactionType: dto.transactionType!,
      createdBy: dto.createdBy!,
      deletedBy: dto.deletedBy,
    );

    return Result.ok(data: data);
  }
}
