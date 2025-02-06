// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletDtoImpl _$$WalletDtoImplFromJson(Map<String, dynamic> json) =>
    _$WalletDtoImpl(
      json['walletId'] as String?,
      json['name'] as String?,
      (json['initial'] as num?)?.toDouble(),
      (json['income'] as num?)?.toDouble(),
      (json['expense'] as num?)?.toDouble(),
      json['createdBy'] as String?,
    );

Map<String, dynamic> _$$WalletDtoImplToJson(_$WalletDtoImpl instance) =>
    <String, dynamic>{
      'walletId': instance.walletId,
      'name': instance.name,
      'initial': instance.initial,
      'income': instance.income,
      'expense': instance.expense,
      'createdBy': instance.createdBy,
    };
