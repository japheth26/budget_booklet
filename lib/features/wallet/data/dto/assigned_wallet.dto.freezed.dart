// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assigned_wallet.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssignedWalletDto _$AssignedWalletDtoFromJson(Map<String, dynamic> json) {
  return _AssignedWalletDto.fromJson(json);
}

/// @nodoc
mixin _$AssignedWalletDto {
  String? get assignedWalletId => throw _privateConstructorUsedError;
  String? get walletId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get access => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignedWalletDtoCopyWith<AssignedWalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedWalletDtoCopyWith<$Res> {
  factory $AssignedWalletDtoCopyWith(
          AssignedWalletDto value, $Res Function(AssignedWalletDto) then) =
      _$AssignedWalletDtoCopyWithImpl<$Res, AssignedWalletDto>;
  @useResult
  $Res call(
      {String? assignedWalletId,
      String? walletId,
      String? userId,
      String? access,
      String? role});
}

/// @nodoc
class _$AssignedWalletDtoCopyWithImpl<$Res, $Val extends AssignedWalletDto>
    implements $AssignedWalletDtoCopyWith<$Res> {
  _$AssignedWalletDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignedWalletId = freezed,
    Object? walletId = freezed,
    Object? userId = freezed,
    Object? access = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      assignedWalletId: freezed == assignedWalletId
          ? _value.assignedWalletId
          : assignedWalletId // ignore: cast_nullable_to_non_nullable
              as String?,
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignedWalletDtoImplCopyWith<$Res>
    implements $AssignedWalletDtoCopyWith<$Res> {
  factory _$$AssignedWalletDtoImplCopyWith(_$AssignedWalletDtoImpl value,
          $Res Function(_$AssignedWalletDtoImpl) then) =
      __$$AssignedWalletDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? assignedWalletId,
      String? walletId,
      String? userId,
      String? access,
      String? role});
}

/// @nodoc
class __$$AssignedWalletDtoImplCopyWithImpl<$Res>
    extends _$AssignedWalletDtoCopyWithImpl<$Res, _$AssignedWalletDtoImpl>
    implements _$$AssignedWalletDtoImplCopyWith<$Res> {
  __$$AssignedWalletDtoImplCopyWithImpl(_$AssignedWalletDtoImpl _value,
      $Res Function(_$AssignedWalletDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignedWalletId = freezed,
    Object? walletId = freezed,
    Object? userId = freezed,
    Object? access = freezed,
    Object? role = freezed,
  }) {
    return _then(_$AssignedWalletDtoImpl(
      assignedWalletId: freezed == assignedWalletId
          ? _value.assignedWalletId
          : assignedWalletId // ignore: cast_nullable_to_non_nullable
              as String?,
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignedWalletDtoImpl implements _AssignedWalletDto {
  const _$AssignedWalletDtoImpl(
      {this.assignedWalletId,
      this.walletId,
      this.userId,
      this.access,
      this.role});

  factory _$AssignedWalletDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignedWalletDtoImplFromJson(json);

  @override
  final String? assignedWalletId;
  @override
  final String? walletId;
  @override
  final String? userId;
  @override
  final String? access;
  @override
  final String? role;

  @override
  String toString() {
    return 'AssignedWalletDto(assignedWalletId: $assignedWalletId, walletId: $walletId, userId: $userId, access: $access, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignedWalletDtoImpl &&
            (identical(other.assignedWalletId, assignedWalletId) ||
                other.assignedWalletId == assignedWalletId) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, assignedWalletId, walletId, userId, access, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignedWalletDtoImplCopyWith<_$AssignedWalletDtoImpl> get copyWith =>
      __$$AssignedWalletDtoImplCopyWithImpl<_$AssignedWalletDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignedWalletDtoImplToJson(
      this,
    );
  }
}

abstract class _AssignedWalletDto implements AssignedWalletDto {
  const factory _AssignedWalletDto(
      {final String? assignedWalletId,
      final String? walletId,
      final String? userId,
      final String? access,
      final String? role}) = _$AssignedWalletDtoImpl;

  factory _AssignedWalletDto.fromJson(Map<String, dynamic> json) =
      _$AssignedWalletDtoImpl.fromJson;

  @override
  String? get assignedWalletId;
  @override
  String? get walletId;
  @override
  String? get userId;
  @override
  String? get access;
  @override
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$AssignedWalletDtoImplCopyWith<_$AssignedWalletDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
