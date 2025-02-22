// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_budget.vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateBudgetVo {
  String get budgetId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateBudgetVoCopyWith<UpdateBudgetVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateBudgetVoCopyWith<$Res> {
  factory $UpdateBudgetVoCopyWith(
          UpdateBudgetVo value, $Res Function(UpdateBudgetVo) then) =
      _$UpdateBudgetVoCopyWithImpl<$Res, UpdateBudgetVo>;
  @useResult
  $Res call(
      {String budgetId,
      String name,
      double amount,
      String from,
      String to,
      String? notes});
}

/// @nodoc
class _$UpdateBudgetVoCopyWithImpl<$Res, $Val extends UpdateBudgetVo>
    implements $UpdateBudgetVoCopyWith<$Res> {
  _$UpdateBudgetVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budgetId = null,
    Object? name = null,
    Object? amount = null,
    Object? from = null,
    Object? to = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateBudgetVoImplCopyWith<$Res>
    implements $UpdateBudgetVoCopyWith<$Res> {
  factory _$$UpdateBudgetVoImplCopyWith(_$UpdateBudgetVoImpl value,
          $Res Function(_$UpdateBudgetVoImpl) then) =
      __$$UpdateBudgetVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String budgetId,
      String name,
      double amount,
      String from,
      String to,
      String? notes});
}

/// @nodoc
class __$$UpdateBudgetVoImplCopyWithImpl<$Res>
    extends _$UpdateBudgetVoCopyWithImpl<$Res, _$UpdateBudgetVoImpl>
    implements _$$UpdateBudgetVoImplCopyWith<$Res> {
  __$$UpdateBudgetVoImplCopyWithImpl(
      _$UpdateBudgetVoImpl _value, $Res Function(_$UpdateBudgetVoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budgetId = null,
    Object? name = null,
    Object? amount = null,
    Object? from = null,
    Object? to = null,
    Object? notes = freezed,
  }) {
    return _then(_$UpdateBudgetVoImpl(
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateBudgetVoImpl extends _UpdateBudgetVo {
  _$UpdateBudgetVoImpl(
      {required this.budgetId,
      required this.name,
      required this.amount,
      required this.from,
      required this.to,
      this.notes})
      : super._();

  @override
  final String budgetId;
  @override
  final String name;
  @override
  final double amount;
  @override
  final String from;
  @override
  final String to;
  @override
  final String? notes;

  @override
  String toString() {
    return 'UpdateBudgetVo(budgetId: $budgetId, name: $name, amount: $amount, from: $from, to: $to, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBudgetVoImpl &&
            (identical(other.budgetId, budgetId) ||
                other.budgetId == budgetId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, budgetId, name, amount, from, to, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBudgetVoImplCopyWith<_$UpdateBudgetVoImpl> get copyWith =>
      __$$UpdateBudgetVoImplCopyWithImpl<_$UpdateBudgetVoImpl>(
          this, _$identity);
}

abstract class _UpdateBudgetVo extends UpdateBudgetVo {
  factory _UpdateBudgetVo(
      {required final String budgetId,
      required final String name,
      required final double amount,
      required final String from,
      required final String to,
      final String? notes}) = _$UpdateBudgetVoImpl;
  _UpdateBudgetVo._() : super._();

  @override
  String get budgetId;
  @override
  String get name;
  @override
  double get amount;
  @override
  String get from;
  @override
  String get to;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$UpdateBudgetVoImplCopyWith<_$UpdateBudgetVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
