// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDtoImpl _$$CategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDtoImpl(
      categoryId: json['categoryId'] as String?,
      label: json['label'] as String?,
      icon: (json['icon'] as num?)?.toInt(),
      color: (json['color'] as num?)?.toInt(),
      deleted: json['deleted'] as bool?,
      walletId: json['walletId'] as String?,
      createdBy: json['createdBy'] as String?,
      deletedBy: json['deletedBy'] as String?,
      transactionType: json['transactionType'] as String?,
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'label': instance.label,
      'icon': instance.icon,
      'color': instance.color,
      'deleted': instance.deleted,
      'walletId': instance.walletId,
      'createdBy': instance.createdBy,
      'deletedBy': instance.deletedBy,
      'transactionType': instance.transactionType,
    };
