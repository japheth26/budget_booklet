// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserDtoImpl _$$AuthUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserDtoImpl(
      json['userId'] as String?,
      json['firstName'] as String?,
      json['lastName'] as String?,
      json['emailAddress'] as String?,
    );

Map<String, dynamic> _$$AuthUserDtoImplToJson(_$AuthUserDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'emailAddress': instance.emailAddress,
    };
