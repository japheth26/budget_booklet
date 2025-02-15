// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_record.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyRecordDtoImpl _$$MonthlyRecordDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthlyRecordDtoImpl(
      recordId: json['recordId'] as String?,
      walletId: json['walletId'] as String?,
      initialAmount: (json['initialAmount'] as num?)?.toDouble(),
      spendingAmount: (json['spendingAmount'] as num?)?.toDouble(),
      savingAmount: (json['savingAmount'] as num?)?.toDouble(),
      income: (json['income'] as num?)?.toDouble(),
      expense: (json['expense'] as num?)?.toDouble(),
      goal: json['goal'] as String?,
      plan: json['plan'] as String?,
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MonthlyRecordDtoImplToJson(
        _$MonthlyRecordDtoImpl instance) =>
    <String, dynamic>{
      'recordId': instance.recordId,
      'walletId': instance.walletId,
      'initialAmount': instance.initialAmount,
      'spendingAmount': instance.spendingAmount,
      'savingAmount': instance.savingAmount,
      'income': instance.income,
      'expense': instance.expense,
      'goal': instance.goal,
      'plan': instance.plan,
      'month': instance.month,
      'year': instance.year,
    };
