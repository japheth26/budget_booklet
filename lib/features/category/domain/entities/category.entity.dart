import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hani/core/result/result.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/category/data/dto/category.dto.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';

class CategoryEntity extends Equatable {
  final String categoryId;
  final String label;
  final String icon;
  final Color color;
  final bool deleted;
  final String walletId;
  final String createdBy;
  final String? deletedBy;
  final String transactionType;

  const CategoryEntity(
      {required this.categoryId,
      required this.label,
      required this.icon,
      required this.color,
      required this.deleted,
      required this.walletId,
      required this.createdBy,
      this.deletedBy,
      required this.transactionType});

  @override
  List<Object?> get props => [
        categoryId,
        label,
        icon,
        color,
        deleted,
        walletId,
        createdBy,
        deletedBy,
        transactionType,
      ];

  static Result<CategoryEntity> create(CategoryDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('Category ID', dto.categoryId),
      Guard.againstEmptyString('Label', dto.label),
      Guard.againstEmptyString('Icon', dto.icon),
      Guard.againstUndefined('Color', dto.color),
      Guard.againstUndefined('Deleted Status', dto.deleted),
      Guard.againstEmptyString('Wallet ID', dto.walletId),
      Guard.againstEmptyString('Created By', dto.createdBy),
      Guard.againstInvalidArrayItem(
          'Transaction Type', TransactionType.values, dto.transactionType),
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

    final data = CategoryEntity(
      categoryId: dto.categoryId!,
      label: dto.label!,
      icon: dto.icon!,
      color: color,
      deleted: dto.deleted!,
      walletId: dto.walletId!,
      createdBy: dto.createdBy!,
      deletedBy: dto.deletedBy,
      transactionType: dto.transactionType!,
    );

    return Result.ok(data: data);
  }
}
