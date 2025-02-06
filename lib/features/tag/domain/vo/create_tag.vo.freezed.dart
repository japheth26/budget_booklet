// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tag.vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTagVo {
  String get label => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  String get walletId => throw _privateConstructorUsedError;
  String get transactionType => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTagVoCopyWith<CreateTagVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTagVoCopyWith<$Res> {
  factory $CreateTagVoCopyWith(
          CreateTagVo value, $Res Function(CreateTagVo) then) =
      _$CreateTagVoCopyWithImpl<$Res, CreateTagVo>;
  @useResult
  $Res call(
      {String label,
      int color,
      String walletId,
      String transactionType,
      String createdBy});
}

/// @nodoc
class _$CreateTagVoCopyWithImpl<$Res, $Val extends CreateTagVo>
    implements $CreateTagVoCopyWith<$Res> {
  _$CreateTagVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? color = null,
    Object? walletId = null,
    Object? transactionType = null,
    Object? createdBy = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTagVoImplCopyWith<$Res>
    implements $CreateTagVoCopyWith<$Res> {
  factory _$$CreateTagVoImplCopyWith(
          _$CreateTagVoImpl value, $Res Function(_$CreateTagVoImpl) then) =
      __$$CreateTagVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      int color,
      String walletId,
      String transactionType,
      String createdBy});
}

/// @nodoc
class __$$CreateTagVoImplCopyWithImpl<$Res>
    extends _$CreateTagVoCopyWithImpl<$Res, _$CreateTagVoImpl>
    implements _$$CreateTagVoImplCopyWith<$Res> {
  __$$CreateTagVoImplCopyWithImpl(
      _$CreateTagVoImpl _value, $Res Function(_$CreateTagVoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? color = null,
    Object? walletId = null,
    Object? transactionType = null,
    Object? createdBy = null,
  }) {
    return _then(_$CreateTagVoImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateTagVoImpl extends _CreateTagVo {
  const _$CreateTagVoImpl(
      {required this.label,
      required this.color,
      required this.walletId,
      required this.transactionType,
      required this.createdBy})
      : super._();

  @override
  final String label;
  @override
  final int color;
  @override
  final String walletId;
  @override
  final String transactionType;
  @override
  final String createdBy;

  @override
  String toString() {
    return 'CreateTagVo(label: $label, color: $color, walletId: $walletId, transactionType: $transactionType, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTagVoImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, label, color, walletId, transactionType, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTagVoImplCopyWith<_$CreateTagVoImpl> get copyWith =>
      __$$CreateTagVoImplCopyWithImpl<_$CreateTagVoImpl>(this, _$identity);
}

abstract class _CreateTagVo extends CreateTagVo {
  const factory _CreateTagVo(
      {required final String label,
      required final int color,
      required final String walletId,
      required final String transactionType,
      required final String createdBy}) = _$CreateTagVoImpl;
  const _CreateTagVo._() : super._();

  @override
  String get label;
  @override
  int get color;
  @override
  String get walletId;
  @override
  String get transactionType;
  @override
  String get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$CreateTagVoImplCopyWith<_$CreateTagVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
