// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagDtoImpl _$$TagDtoImplFromJson(Map<String, dynamic> json) => _$TagDtoImpl(
      tagId: json['tagId'] as String?,
      label: json['label'] as String?,
      color: (json['color'] as num?)?.toInt(),
      deleted: json['deleted'] as bool?,
      walletId: json['walletId'] as String?,
      transactionType: json['transactionType'] as String?,
      createdBy: json['createdBy'] as String?,
      deletedBy: json['deletedBy'] as String?,
    );

Map<String, dynamic> _$$TagDtoImplToJson(_$TagDtoImpl instance) =>
    <String, dynamic>{
      'tagId': instance.tagId,
      'label': instance.label,
      'color': instance.color,
      'deleted': instance.deleted,
      'walletId': instance.walletId,
      'transactionType': instance.transactionType,
      'createdBy': instance.createdBy,
      'deletedBy': instance.deletedBy,
    };
