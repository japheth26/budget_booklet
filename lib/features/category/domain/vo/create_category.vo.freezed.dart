// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_category.vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateCategoryVo {
  String get walletId => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get transactionType => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateCategoryVoCopyWith<CreateCategoryVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCategoryVoCopyWith<$Res> {
  factory $CreateCategoryVoCopyWith(
          CreateCategoryVo value, $Res Function(CreateCategoryVo) then) =
      _$CreateCategoryVoCopyWithImpl<$Res, CreateCategoryVo>;
  @useResult
  $Res call(
      {String walletId,
      String label,
      String icon,
      String transactionType,
      int color,
      String createdBy});
}

/// @nodoc
class _$CreateCategoryVoCopyWithImpl<$Res, $Val extends CreateCategoryVo>
    implements $CreateCategoryVoCopyWith<$Res> {
  _$CreateCategoryVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? label = null,
    Object? icon = null,
    Object? transactionType = null,
    Object? color = null,
    Object? createdBy = null,
  }) {
    return _then(_value.copyWith(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCategoryVoImplCopyWith<$Res>
    implements $CreateCategoryVoCopyWith<$Res> {
  factory _$$CreateCategoryVoImplCopyWith(_$CreateCategoryVoImpl value,
          $Res Function(_$CreateCategoryVoImpl) then) =
      __$$CreateCategoryVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String walletId,
      String label,
      String icon,
      String transactionType,
      int color,
      String createdBy});
}

/// @nodoc
class __$$CreateCategoryVoImplCopyWithImpl<$Res>
    extends _$CreateCategoryVoCopyWithImpl<$Res, _$CreateCategoryVoImpl>
    implements _$$CreateCategoryVoImplCopyWith<$Res> {
  __$$CreateCategoryVoImplCopyWithImpl(_$CreateCategoryVoImpl _value,
      $Res Function(_$CreateCategoryVoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? label = null,
    Object? icon = null,
    Object? transactionType = null,
    Object? color = null,
    Object? createdBy = null,
  }) {
    return _then(_$CreateCategoryVoImpl(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateCategoryVoImpl extends _CreateCategoryVo {
  const _$CreateCategoryVoImpl(
      {required this.walletId,
      required this.label,
      required this.icon,
      required this.transactionType,
      required this.color,
      required this.createdBy})
      : super._();

  @override
  final String walletId;
  @override
  final String label;
  @override
  final String icon;
  @override
  final String transactionType;
  @override
  final int color;
  @override
  final String createdBy;

  @override
  String toString() {
    return 'CreateCategoryVo(walletId: $walletId, label: $label, icon: $icon, transactionType: $transactionType, color: $color, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCategoryVoImpl &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, walletId, label, icon, transactionType, color, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCategoryVoImplCopyWith<_$CreateCategoryVoImpl> get copyWith =>
      __$$CreateCategoryVoImplCopyWithImpl<_$CreateCategoryVoImpl>(
          this, _$identity);
}

abstract class _CreateCategoryVo extends CreateCategoryVo {
  const factory _CreateCategoryVo(
      {required final String walletId,
      required final String label,
      required final String icon,
      required final String transactionType,
      required final int color,
      required final String createdBy}) = _$CreateCategoryVoImpl;
  const _CreateCategoryVo._() : super._();

  @override
  String get walletId;
  @override
  String get label;
  @override
  String get icon;
  @override
  String get transactionType;
  @override
  int get color;
  @override
  String get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$CreateCategoryVoImplCopyWith<_$CreateCategoryVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
