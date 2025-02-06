// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  String? get categoryId => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  int? get color => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  String? get walletId => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get deletedBy => throw _privateConstructorUsedError;
  String? get transactionType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res, CategoryDto>;
  @useResult
  $Res call(
      {String? categoryId,
      String? label,
      String? icon,
      int? color,
      bool? deleted,
      String? walletId,
      String? createdBy,
      String? deletedBy,
      String? transactionType});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res, $Val extends CategoryDto>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? label = freezed,
    Object? icon = freezed,
    Object? color = freezed,
    Object? deleted = freezed,
    Object? walletId = freezed,
    Object? createdBy = freezed,
    Object? deletedBy = freezed,
    Object? transactionType = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDtoImplCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$CategoryDtoImplCopyWith(
          _$CategoryDtoImpl value, $Res Function(_$CategoryDtoImpl) then) =
      __$$CategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? categoryId,
      String? label,
      String? icon,
      int? color,
      bool? deleted,
      String? walletId,
      String? createdBy,
      String? deletedBy,
      String? transactionType});
}

/// @nodoc
class __$$CategoryDtoImplCopyWithImpl<$Res>
    extends _$CategoryDtoCopyWithImpl<$Res, _$CategoryDtoImpl>
    implements _$$CategoryDtoImplCopyWith<$Res> {
  __$$CategoryDtoImplCopyWithImpl(
      _$CategoryDtoImpl _value, $Res Function(_$CategoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? label = freezed,
    Object? icon = freezed,
    Object? color = freezed,
    Object? deleted = freezed,
    Object? walletId = freezed,
    Object? createdBy = freezed,
    Object? deletedBy = freezed,
    Object? transactionType = freezed,
  }) {
    return _then(_$CategoryDtoImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDtoImpl extends _CategoryDto {
  const _$CategoryDtoImpl(
      {this.categoryId,
      this.label,
      this.icon,
      this.color,
      this.deleted,
      this.walletId,
      this.createdBy,
      this.deletedBy,
      this.transactionType})
      : super._();

  factory _$CategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDtoImplFromJson(json);

  @override
  final String? categoryId;
  @override
  final String? label;
  @override
  final String? icon;
  @override
  final int? color;
  @override
  final bool? deleted;
  @override
  final String? walletId;
  @override
  final String? createdBy;
  @override
  final String? deletedBy;
  @override
  final String? transactionType;

  @override
  String toString() {
    return 'CategoryDto(categoryId: $categoryId, label: $label, icon: $icon, color: $color, deleted: $deleted, walletId: $walletId, createdBy: $createdBy, deletedBy: $deletedBy, transactionType: $transactionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDtoImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, label, icon, color,
      deleted, walletId, createdBy, deletedBy, transactionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDtoImplCopyWith<_$CategoryDtoImpl> get copyWith =>
      __$$CategoryDtoImplCopyWithImpl<_$CategoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _CategoryDto extends CategoryDto {
  const factory _CategoryDto(
      {final String? categoryId,
      final String? label,
      final String? icon,
      final int? color,
      final bool? deleted,
      final String? walletId,
      final String? createdBy,
      final String? deletedBy,
      final String? transactionType}) = _$CategoryDtoImpl;
  const _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$CategoryDtoImpl.fromJson;

  @override
  String? get categoryId;
  @override
  String? get label;
  @override
  String? get icon;
  @override
  int? get color;
  @override
  bool? get deleted;
  @override
  String? get walletId;
  @override
  String? get createdBy;
  @override
  String? get deletedBy;
  @override
  String? get transactionType;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDtoImplCopyWith<_$CategoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
