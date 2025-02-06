// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletDto _$WalletDtoFromJson(Map<String, dynamic> json) {
  return _WalletDto.fromJson(json);
}

/// @nodoc
mixin _$WalletDto {
  String? get walletId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get initial => throw _privateConstructorUsedError;
  double? get income => throw _privateConstructorUsedError;
  double? get expense => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDtoCopyWith<WalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDtoCopyWith<$Res> {
  factory $WalletDtoCopyWith(WalletDto value, $Res Function(WalletDto) then) =
      _$WalletDtoCopyWithImpl<$Res, WalletDto>;
  @useResult
  $Res call(
      {String? walletId,
      String? name,
      double? initial,
      double? income,
      double? expense,
      String? createdBy});
}

/// @nodoc
class _$WalletDtoCopyWithImpl<$Res, $Val extends WalletDto>
    implements $WalletDtoCopyWith<$Res> {
  _$WalletDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = freezed,
    Object? name = freezed,
    Object? initial = freezed,
    Object? income = freezed,
    Object? expense = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      initial: freezed == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as double?,
      income: freezed == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double?,
      expense: freezed == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as double?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletDtoImplCopyWith<$Res>
    implements $WalletDtoCopyWith<$Res> {
  factory _$$WalletDtoImplCopyWith(
          _$WalletDtoImpl value, $Res Function(_$WalletDtoImpl) then) =
      __$$WalletDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? walletId,
      String? name,
      double? initial,
      double? income,
      double? expense,
      String? createdBy});
}

/// @nodoc
class __$$WalletDtoImplCopyWithImpl<$Res>
    extends _$WalletDtoCopyWithImpl<$Res, _$WalletDtoImpl>
    implements _$$WalletDtoImplCopyWith<$Res> {
  __$$WalletDtoImplCopyWithImpl(
      _$WalletDtoImpl _value, $Res Function(_$WalletDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = freezed,
    Object? name = freezed,
    Object? initial = freezed,
    Object? income = freezed,
    Object? expense = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$WalletDtoImpl(
      freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletDtoImpl extends _WalletDto {
  const _$WalletDtoImpl(this.walletId, this.name, this.initial, this.income,
      this.expense, this.createdBy)
      : super._();

  factory _$WalletDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletDtoImplFromJson(json);

  @override
  final String? walletId;
  @override
  final String? name;
  @override
  final double? initial;
  @override
  final double? income;
  @override
  final double? expense;
  @override
  final String? createdBy;

  @override
  String toString() {
    return 'WalletDto(walletId: $walletId, name: $name, initial: $initial, income: $income, expense: $expense, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDtoImpl &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.initial, initial) || other.initial == initial) &&
            (identical(other.income, income) || other.income == income) &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, walletId, name, initial, income, expense, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDtoImplCopyWith<_$WalletDtoImpl> get copyWith =>
      __$$WalletDtoImplCopyWithImpl<_$WalletDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletDtoImplToJson(
      this,
    );
  }
}

abstract class _WalletDto extends WalletDto {
  const factory _WalletDto(
      final String? walletId,
      final String? name,
      final double? initial,
      final double? income,
      final double? expense,
      final String? createdBy) = _$WalletDtoImpl;
  const _WalletDto._() : super._();

  factory _WalletDto.fromJson(Map<String, dynamic> json) =
      _$WalletDtoImpl.fromJson;

  @override
  String? get walletId;
  @override
  String? get name;
  @override
  double? get initial;
  @override
  double? get income;
  @override
  double? get expense;
  @override
  String? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$WalletDtoImplCopyWith<_$WalletDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
