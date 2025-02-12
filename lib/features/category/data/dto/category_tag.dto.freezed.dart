// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_tag.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryTagDto _$CategoryTagDtoFromJson(Map<String, dynamic> json) {
  return _CategoryTagDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryTagDto {
  String? get categoryTagId => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get tagId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryTagDtoCopyWith<CategoryTagDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTagDtoCopyWith<$Res> {
  factory $CategoryTagDtoCopyWith(
          CategoryTagDto value, $Res Function(CategoryTagDto) then) =
      _$CategoryTagDtoCopyWithImpl<$Res, CategoryTagDto>;
  @useResult
  $Res call({String? categoryTagId, String? categoryId, String? tagId});
}

/// @nodoc
class _$CategoryTagDtoCopyWithImpl<$Res, $Val extends CategoryTagDto>
    implements $CategoryTagDtoCopyWith<$Res> {
  _$CategoryTagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryTagId = freezed,
    Object? categoryId = freezed,
    Object? tagId = freezed,
  }) {
    return _then(_value.copyWith(
      categoryTagId: freezed == categoryTagId
          ? _value.categoryTagId
          : categoryTagId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      tagId: freezed == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryTagDtoImplCopyWith<$Res>
    implements $CategoryTagDtoCopyWith<$Res> {
  factory _$$CategoryTagDtoImplCopyWith(_$CategoryTagDtoImpl value,
          $Res Function(_$CategoryTagDtoImpl) then) =
      __$$CategoryTagDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? categoryTagId, String? categoryId, String? tagId});
}

/// @nodoc
class __$$CategoryTagDtoImplCopyWithImpl<$Res>
    extends _$CategoryTagDtoCopyWithImpl<$Res, _$CategoryTagDtoImpl>
    implements _$$CategoryTagDtoImplCopyWith<$Res> {
  __$$CategoryTagDtoImplCopyWithImpl(
      _$CategoryTagDtoImpl _value, $Res Function(_$CategoryTagDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryTagId = freezed,
    Object? categoryId = freezed,
    Object? tagId = freezed,
  }) {
    return _then(_$CategoryTagDtoImpl(
      categoryTagId: freezed == categoryTagId
          ? _value.categoryTagId
          : categoryTagId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      tagId: freezed == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryTagDtoImpl extends _CategoryTagDto {
  const _$CategoryTagDtoImpl({this.categoryTagId, this.categoryId, this.tagId})
      : super._();

  factory _$CategoryTagDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryTagDtoImplFromJson(json);

  @override
  final String? categoryTagId;
  @override
  final String? categoryId;
  @override
  final String? tagId;

  @override
  String toString() {
    return 'CategoryTagDto(categoryTagId: $categoryTagId, categoryId: $categoryId, tagId: $tagId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryTagDtoImpl &&
            (identical(other.categoryTagId, categoryTagId) ||
                other.categoryTagId == categoryTagId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.tagId, tagId) || other.tagId == tagId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryTagId, categoryId, tagId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryTagDtoImplCopyWith<_$CategoryTagDtoImpl> get copyWith =>
      __$$CategoryTagDtoImplCopyWithImpl<_$CategoryTagDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryTagDtoImplToJson(
      this,
    );
  }
}

abstract class _CategoryTagDto extends CategoryTagDto {
  const factory _CategoryTagDto(
      {final String? categoryTagId,
      final String? categoryId,
      final String? tagId}) = _$CategoryTagDtoImpl;
  const _CategoryTagDto._() : super._();

  factory _CategoryTagDto.fromJson(Map<String, dynamic> json) =
      _$CategoryTagDtoImpl.fromJson;

  @override
  String? get categoryTagId;
  @override
  String? get categoryId;
  @override
  String? get tagId;
  @override
  @JsonKey(ignore: true)
  _$$CategoryTagDtoImplCopyWith<_$CategoryTagDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
