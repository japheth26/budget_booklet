// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_tag.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryTagDtoImpl _$$CategoryTagDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryTagDtoImpl(
      categoryTagId: json['categoryTagId'] as String?,
      categoryId: json['categoryId'] as String?,
      tagId: json['tagId'] as String?,
    );

Map<String, dynamic> _$$CategoryTagDtoImplToJson(
        _$CategoryTagDtoImpl instance) =>
    <String, dynamic>{
      'categoryTagId': instance.categoryTagId,
      'categoryId': instance.categoryId,
      'tagId': instance.tagId,
    };
