// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assigned_wallet.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssignedWalletDtoImpl _$$AssignedWalletDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignedWalletDtoImpl(
      assignedWalletId: json['assignedWalletId'] as String?,
      walletId: json['walletId'] as String?,
      userId: json['userId'] as String?,
      access: json['access'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$AssignedWalletDtoImplToJson(
        _$AssignedWalletDtoImpl instance) =>
    <String, dynamic>{
      'assignedWalletId': instance.assignedWalletId,
      'walletId': instance.walletId,
      'userId': instance.userId,
      'access': instance.access,
      'role': instance.role,
    };
