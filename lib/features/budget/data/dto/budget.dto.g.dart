// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BudgetDtoImpl _$$BudgetDtoImplFromJson(Map<String, dynamic> json) =>
    _$BudgetDtoImpl(
      budgetId: json['budgetId'] as String?,
      walletId: json['walletId'] as String?,
      name: json['name'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      totalExpense: (json['totalExpense'] as num?)?.toDouble(),
      from: json['from'] as String?,
      to: json['to'] as String?,
      notes: json['notes'] as String?,
      deleted: json['deleted'] as bool?,
      deletedBy: json['deletedBy'] as String?,
    );

Map<String, dynamic> _$$BudgetDtoImplToJson(_$BudgetDtoImpl instance) =>
    <String, dynamic>{
      'budgetId': instance.budgetId,
      'walletId': instance.walletId,
      'name': instance.name,
      'amount': instance.amount,
      'totalExpense': instance.totalExpense,
      'from': instance.from,
      'to': instance.to,
      'notes': instance.notes,
      'deleted': instance.deleted,
      'deletedBy': instance.deletedBy,
    };
