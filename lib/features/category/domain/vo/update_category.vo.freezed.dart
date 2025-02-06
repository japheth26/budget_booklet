// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_category.vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateCategoryVo {
  String get categoryId => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateCategoryVoCopyWith<UpdateCategoryVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCategoryVoCopyWith<$Res> {
  factory $UpdateCategoryVoCopyWith(
          UpdateCategoryVo value, $Res Function(UpdateCategoryVo) then) =
      _$UpdateCategoryVoCopyWithImpl<$Res, UpdateCategoryVo>;
  @useResult
  $Res call({String categoryId, String label, String icon, int color});
}

/// @nodoc
class _$UpdateCategoryVoCopyWithImpl<$Res, $Val extends UpdateCategoryVo>
    implements $UpdateCategoryVoCopyWith<$Res> {
  _$UpdateCategoryVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? label = null,
    Object? icon = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCategoryVoImplCopyWith<$Res>
    implements $UpdateCategoryVoCopyWith<$Res> {
  factory _$$UpdateCategoryVoImplCopyWith(_$UpdateCategoryVoImpl value,
          $Res Function(_$UpdateCategoryVoImpl) then) =
      __$$UpdateCategoryVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryId, String label, String icon, int color});
}

/// @nodoc
class __$$UpdateCategoryVoImplCopyWithImpl<$Res>
    extends _$UpdateCategoryVoCopyWithImpl<$Res, _$UpdateCategoryVoImpl>
    implements _$$UpdateCategoryVoImplCopyWith<$Res> {
  __$$UpdateCategoryVoImplCopyWithImpl(_$UpdateCategoryVoImpl _value,
      $Res Function(_$UpdateCategoryVoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? label = null,
    Object? icon = null,
    Object? color = null,
  }) {
    return _then(_$UpdateCategoryVoImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryVoImpl extends _UpdateCategoryVo {
  const _$UpdateCategoryVoImpl(
      {required this.categoryId,
      required this.label,
      required this.icon,
      required this.color})
      : super._();

  @override
  final String categoryId;
  @override
  final String label;
  @override
  final String icon;
  @override
  final int color;

  @override
  String toString() {
    return 'UpdateCategoryVo(categoryId: $categoryId, label: $label, icon: $icon, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryVoImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, label, icon, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryVoImplCopyWith<_$UpdateCategoryVoImpl> get copyWith =>
      __$$UpdateCategoryVoImplCopyWithImpl<_$UpdateCategoryVoImpl>(
          this, _$identity);
}

abstract class _UpdateCategoryVo extends UpdateCategoryVo {
  const factory _UpdateCategoryVo(
      {required final String categoryId,
      required final String label,
      required final String icon,
      required final int color}) = _$UpdateCategoryVoImpl;
  const _UpdateCategoryVo._() : super._();

  @override
  String get categoryId;
  @override
  String get label;
  @override
  String get icon;
  @override
  int get color;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCategoryVoImplCopyWith<_$UpdateCategoryVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
