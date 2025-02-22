// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_budget.vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateBudgetVo {
  String get walletId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateBudgetVoCopyWith<CreateBudgetVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBudgetVoCopyWith<$Res> {
  factory $CreateBudgetVoCopyWith(
          CreateBudgetVo value, $Res Function(CreateBudgetVo) then) =
      _$CreateBudgetVoCopyWithImpl<$Res, CreateBudgetVo>;
  @useResult
  $Res call(
      {String walletId,
      String name,
      double amount,
      String from,
      String to,
      String? notes});
}

/// @nodoc
class _$CreateBudgetVoCopyWithImpl<$Res, $Val extends CreateBudgetVo>
    implements $CreateBudgetVoCopyWith<$Res> {
  _$CreateBudgetVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? name = null,
    Object? amount = null,
    Object? from = null,
    Object? to = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CreateBudgetVoImplCopyWith<$Res>
    implements $CreateBudgetVoCopyWith<$Res> {
  factory _$$CreateBudgetVoImplCopyWith(_$CreateBudgetVoImpl value,
          $Res Function(_$CreateBudgetVoImpl) then) =
      __$$CreateBudgetVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String walletId,
      String name,
      double amount,
      String from,
      String to,
      String? notes});
}

/// @nodoc
class __$$CreateBudgetVoImplCopyWithImpl<$Res>
    extends _$CreateBudgetVoCopyWithImpl<$Res, _$CreateBudgetVoImpl>
    implements _$$CreateBudgetVoImplCopyWith<$Res> {
  __$$CreateBudgetVoImplCopyWithImpl(
      _$CreateBudgetVoImpl _value, $Res Function(_$CreateBudgetVoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? name = null,
    Object? amount = null,
    Object? from = null,
    Object? to = null,
    Object? notes = freezed,
  }) {
    return _then(_$CreateBudgetVoImpl(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
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

class _$CreateBudgetVoImpl extends _CreateBudgetVo {
  _$CreateBudgetVoImpl(
      {required this.walletId,
      required this.name,
      required this.amount,
      required this.from,
      required this.to,
      this.notes})
      : super._();

  @override
  final String walletId;
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
    return 'CreateBudgetVo(walletId: $walletId, name: $name, amount: $amount, from: $from, to: $to, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBudgetVoImpl &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, walletId, name, amount, from, to, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBudgetVoImplCopyWith<_$CreateBudgetVoImpl> get copyWith =>
      __$$CreateBudgetVoImplCopyWithImpl<_$CreateBudgetVoImpl>(
          this, _$identity);
}

abstract class _CreateBudgetVo extends CreateBudgetVo {
  factory _CreateBudgetVo(
      {required final String walletId,
      required final String name,
      required final double amount,
      required final String from,
      required final String to,
      final String? notes}) = _$CreateBudgetVoImpl;
  _CreateBudgetVo._() : super._();

  @override
  String get walletId;
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
  _$$CreateBudgetVoImplCopyWith<_$CreateBudgetVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
