// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagDto _$TagDtoFromJson(Map<String, dynamic> json) {
  return _TagDto.fromJson(json);
}

/// @nodoc
mixin _$TagDto {
  String? get tagId => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  int? get color => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  String? get walletId => throw _privateConstructorUsedError;
  String? get transactionType => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get deletedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagDtoCopyWith<TagDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagDtoCopyWith<$Res> {
  factory $TagDtoCopyWith(TagDto value, $Res Function(TagDto) then) =
      _$TagDtoCopyWithImpl<$Res, TagDto>;
  @useResult
  $Res call(
      {String? tagId,
      String? label,
      int? color,
      bool? deleted,
      String? walletId,
      String? transactionType,
      String? createdBy,
      String? deletedBy});
}

/// @nodoc
class _$TagDtoCopyWithImpl<$Res, $Val extends TagDto>
    implements $TagDtoCopyWith<$Res> {
  _$TagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = freezed,
    Object? label = freezed,
    Object? color = freezed,
    Object? deleted = freezed,
    Object? walletId = freezed,
    Object? transactionType = freezed,
    Object? createdBy = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_value.copyWith(
      tagId: freezed == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
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
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagDtoImplCopyWith<$Res> implements $TagDtoCopyWith<$Res> {
  factory _$$TagDtoImplCopyWith(
          _$TagDtoImpl value, $Res Function(_$TagDtoImpl) then) =
      __$$TagDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? tagId,
      String? label,
      int? color,
      bool? deleted,
      String? walletId,
      String? transactionType,
      String? createdBy,
      String? deletedBy});
}

/// @nodoc
class __$$TagDtoImplCopyWithImpl<$Res>
    extends _$TagDtoCopyWithImpl<$Res, _$TagDtoImpl>
    implements _$$TagDtoImplCopyWith<$Res> {
  __$$TagDtoImplCopyWithImpl(
      _$TagDtoImpl _value, $Res Function(_$TagDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = freezed,
    Object? label = freezed,
    Object? color = freezed,
    Object? deleted = freezed,
    Object? walletId = freezed,
    Object? transactionType = freezed,
    Object? createdBy = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_$TagDtoImpl(
      tagId: freezed == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
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
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagDtoImpl extends _TagDto {
  const _$TagDtoImpl(
      {this.tagId,
      this.label,
      this.color,
      this.deleted,
      this.walletId,
      this.transactionType,
      this.createdBy,
      this.deletedBy})
      : super._();

  factory _$TagDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagDtoImplFromJson(json);

  @override
  final String? tagId;
  @override
  final String? label;
  @override
  final int? color;
  @override
  final bool? deleted;
  @override
  final String? walletId;
  @override
  final String? transactionType;
  @override
  final String? createdBy;
  @override
  final String? deletedBy;

  @override
  String toString() {
    return 'TagDto(tagId: $tagId, label: $label, color: $color, deleted: $deleted, walletId: $walletId, transactionType: $transactionType, createdBy: $createdBy, deletedBy: $deletedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagDtoImpl &&
            (identical(other.tagId, tagId) || other.tagId == tagId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tagId, label, color, deleted,
      walletId, transactionType, createdBy, deletedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagDtoImplCopyWith<_$TagDtoImpl> get copyWith =>
      __$$TagDtoImplCopyWithImpl<_$TagDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagDtoImplToJson(
      this,
    );
  }
}

abstract class _TagDto extends TagDto {
  const factory _TagDto(
      {final String? tagId,
      final String? label,
      final int? color,
      final bool? deleted,
      final String? walletId,
      final String? transactionType,
      final String? createdBy,
      final String? deletedBy}) = _$TagDtoImpl;
  const _TagDto._() : super._();

  factory _TagDto.fromJson(Map<String, dynamic> json) = _$TagDtoImpl.fromJson;

  @override
  String? get tagId;
  @override
  String? get label;
  @override
  int? get color;
  @override
  bool? get deleted;
  @override
  String? get walletId;
  @override
  String? get transactionType;
  @override
  String? get createdBy;
  @override
  String? get deletedBy;
  @override
  @JsonKey(ignore: true)
  _$$TagDtoImplCopyWith<_$TagDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
