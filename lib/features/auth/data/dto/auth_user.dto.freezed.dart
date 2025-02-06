// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthUserDto _$AuthUserDtoFromJson(Map<String, dynamic> json) {
  return _AuthUserDto.fromJson(json);
}

/// @nodoc
mixin _$AuthUserDto {
  String? get userId => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get emailAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthUserDtoCopyWith<AuthUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserDtoCopyWith<$Res> {
  factory $AuthUserDtoCopyWith(
          AuthUserDto value, $Res Function(AuthUserDto) then) =
      _$AuthUserDtoCopyWithImpl<$Res, AuthUserDto>;
  @useResult
  $Res call(
      {String? userId,
      String? firstName,
      String? lastName,
      String? emailAddress});
}

/// @nodoc
class _$AuthUserDtoCopyWithImpl<$Res, $Val extends AuthUserDto>
    implements $AuthUserDtoCopyWith<$Res> {
  _$AuthUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUserDtoImplCopyWith<$Res>
    implements $AuthUserDtoCopyWith<$Res> {
  factory _$$AuthUserDtoImplCopyWith(
          _$AuthUserDtoImpl value, $Res Function(_$AuthUserDtoImpl) then) =
      __$$AuthUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? firstName,
      String? lastName,
      String? emailAddress});
}

/// @nodoc
class __$$AuthUserDtoImplCopyWithImpl<$Res>
    extends _$AuthUserDtoCopyWithImpl<$Res, _$AuthUserDtoImpl>
    implements _$$AuthUserDtoImplCopyWith<$Res> {
  __$$AuthUserDtoImplCopyWithImpl(
      _$AuthUserDtoImpl _value, $Res Function(_$AuthUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
  }) {
    return _then(_$AuthUserDtoImpl(
      freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUserDtoImpl extends _AuthUserDto {
  const _$AuthUserDtoImpl(
      this.userId, this.firstName, this.lastName, this.emailAddress)
      : super._();

  factory _$AuthUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthUserDtoImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? emailAddress;

  @override
  String toString() {
    return 'AuthUserDto(userId: $userId, firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, firstName, lastName, emailAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserDtoImplCopyWith<_$AuthUserDtoImpl> get copyWith =>
      __$$AuthUserDtoImplCopyWithImpl<_$AuthUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUserDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthUserDto extends AuthUserDto {
  const factory _AuthUserDto(final String? userId, final String? firstName,
      final String? lastName, final String? emailAddress) = _$AuthUserDtoImpl;
  const _AuthUserDto._() : super._();

  factory _AuthUserDto.fromJson(Map<String, dynamic> json) =
      _$AuthUserDtoImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get emailAddress;
  @override
  @JsonKey(ignore: true)
  _$$AuthUserDtoImplCopyWith<_$AuthUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
