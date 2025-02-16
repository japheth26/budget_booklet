// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateWalletDto dto) createWallet,
    required TResult Function(String userId) fixAssignedWallets,
    required TResult Function(String userId) getWallets,
    required TResult Function(String walletId) selectWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateWalletDto dto)? createWallet,
    TResult? Function(String userId)? fixAssignedWallets,
    TResult? Function(String userId)? getWallets,
    TResult? Function(String walletId)? selectWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateWalletDto dto)? createWallet,
    TResult Function(String userId)? fixAssignedWallets,
    TResult Function(String userId)? getWallets,
    TResult Function(String walletId)? selectWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWallet value) createWallet,
    required TResult Function(_FixUnassignedWallets value) fixAssignedWallets,
    required TResult Function(_GetWallets value) getWallets,
    required TResult Function(_SelectWallet value) selectWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWallet value)? createWallet,
    TResult? Function(_FixUnassignedWallets value)? fixAssignedWallets,
    TResult? Function(_GetWallets value)? getWallets,
    TResult? Function(_SelectWallet value)? selectWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWallet value)? createWallet,
    TResult Function(_FixUnassignedWallets value)? fixAssignedWallets,
    TResult Function(_GetWallets value)? getWallets,
    TResult Function(_SelectWallet value)? selectWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res, WalletEvent>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res, $Val extends WalletEvent>
    implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateWalletImplCopyWith<$Res> {
  factory _$$CreateWalletImplCopyWith(
          _$CreateWalletImpl value, $Res Function(_$CreateWalletImpl) then) =
      __$$CreateWalletImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateWalletDto dto});
}

/// @nodoc
class __$$CreateWalletImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$CreateWalletImpl>
    implements _$$CreateWalletImplCopyWith<$Res> {
  __$$CreateWalletImplCopyWithImpl(
      _$CreateWalletImpl _value, $Res Function(_$CreateWalletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$CreateWalletImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateWalletDto,
    ));
  }
}

/// @nodoc

class _$CreateWalletImpl implements _CreateWallet {
  const _$CreateWalletImpl({required this.dto});

  @override
  final CreateWalletDto dto;

  @override
  String toString() {
    return 'WalletEvent.createWallet(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWalletImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWalletImplCopyWith<_$CreateWalletImpl> get copyWith =>
      __$$CreateWalletImplCopyWithImpl<_$CreateWalletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateWalletDto dto) createWallet,
    required TResult Function(String userId) fixAssignedWallets,
    required TResult Function(String userId) getWallets,
    required TResult Function(String walletId) selectWallet,
  }) {
    return createWallet(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateWalletDto dto)? createWallet,
    TResult? Function(String userId)? fixAssignedWallets,
    TResult? Function(String userId)? getWallets,
    TResult? Function(String walletId)? selectWallet,
  }) {
    return createWallet?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateWalletDto dto)? createWallet,
    TResult Function(String userId)? fixAssignedWallets,
    TResult Function(String userId)? getWallets,
    TResult Function(String walletId)? selectWallet,
    required TResult orElse(),
  }) {
    if (createWallet != null) {
      return createWallet(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWallet value) createWallet,
    required TResult Function(_FixUnassignedWallets value) fixAssignedWallets,
    required TResult Function(_GetWallets value) getWallets,
    required TResult Function(_SelectWallet value) selectWallet,
  }) {
    return createWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWallet value)? createWallet,
    TResult? Function(_FixUnassignedWallets value)? fixAssignedWallets,
    TResult? Function(_GetWallets value)? getWallets,
    TResult? Function(_SelectWallet value)? selectWallet,
  }) {
    return createWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWallet value)? createWallet,
    TResult Function(_FixUnassignedWallets value)? fixAssignedWallets,
    TResult Function(_GetWallets value)? getWallets,
    TResult Function(_SelectWallet value)? selectWallet,
    required TResult orElse(),
  }) {
    if (createWallet != null) {
      return createWallet(this);
    }
    return orElse();
  }
}

abstract class _CreateWallet implements WalletEvent {
  const factory _CreateWallet({required final CreateWalletDto dto}) =
      _$CreateWalletImpl;

  CreateWalletDto get dto;
  @JsonKey(ignore: true)
  _$$CreateWalletImplCopyWith<_$CreateWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FixUnassignedWalletsImplCopyWith<$Res> {
  factory _$$FixUnassignedWalletsImplCopyWith(_$FixUnassignedWalletsImpl value,
          $Res Function(_$FixUnassignedWalletsImpl) then) =
      __$$FixUnassignedWalletsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$FixUnassignedWalletsImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$FixUnassignedWalletsImpl>
    implements _$$FixUnassignedWalletsImplCopyWith<$Res> {
  __$$FixUnassignedWalletsImplCopyWithImpl(_$FixUnassignedWalletsImpl _value,
      $Res Function(_$FixUnassignedWalletsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$FixUnassignedWalletsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FixUnassignedWalletsImpl implements _FixUnassignedWallets {
  const _$FixUnassignedWalletsImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'WalletEvent.fixAssignedWallets(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixUnassignedWalletsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FixUnassignedWalletsImplCopyWith<_$FixUnassignedWalletsImpl>
      get copyWith =>
          __$$FixUnassignedWalletsImplCopyWithImpl<_$FixUnassignedWalletsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateWalletDto dto) createWallet,
    required TResult Function(String userId) fixAssignedWallets,
    required TResult Function(String userId) getWallets,
    required TResult Function(String walletId) selectWallet,
  }) {
    return fixAssignedWallets(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateWalletDto dto)? createWallet,
    TResult? Function(String userId)? fixAssignedWallets,
    TResult? Function(String userId)? getWallets,
    TResult? Function(String walletId)? selectWallet,
  }) {
    return fixAssignedWallets?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateWalletDto dto)? createWallet,
    TResult Function(String userId)? fixAssignedWallets,
    TResult Function(String userId)? getWallets,
    TResult Function(String walletId)? selectWallet,
    required TResult orElse(),
  }) {
    if (fixAssignedWallets != null) {
      return fixAssignedWallets(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWallet value) createWallet,
    required TResult Function(_FixUnassignedWallets value) fixAssignedWallets,
    required TResult Function(_GetWallets value) getWallets,
    required TResult Function(_SelectWallet value) selectWallet,
  }) {
    return fixAssignedWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWallet value)? createWallet,
    TResult? Function(_FixUnassignedWallets value)? fixAssignedWallets,
    TResult? Function(_GetWallets value)? getWallets,
    TResult? Function(_SelectWallet value)? selectWallet,
  }) {
    return fixAssignedWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWallet value)? createWallet,
    TResult Function(_FixUnassignedWallets value)? fixAssignedWallets,
    TResult Function(_GetWallets value)? getWallets,
    TResult Function(_SelectWallet value)? selectWallet,
    required TResult orElse(),
  }) {
    if (fixAssignedWallets != null) {
      return fixAssignedWallets(this);
    }
    return orElse();
  }
}

abstract class _FixUnassignedWallets implements WalletEvent {
  const factory _FixUnassignedWallets({required final String userId}) =
      _$FixUnassignedWalletsImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$FixUnassignedWalletsImplCopyWith<_$FixUnassignedWalletsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWalletsImplCopyWith<$Res> {
  factory _$$GetWalletsImplCopyWith(
          _$GetWalletsImpl value, $Res Function(_$GetWalletsImpl) then) =
      __$$GetWalletsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetWalletsImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$GetWalletsImpl>
    implements _$$GetWalletsImplCopyWith<$Res> {
  __$$GetWalletsImplCopyWithImpl(
      _$GetWalletsImpl _value, $Res Function(_$GetWalletsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetWalletsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWalletsImpl implements _GetWallets {
  const _$GetWalletsImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'WalletEvent.getWallets(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWalletsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWalletsImplCopyWith<_$GetWalletsImpl> get copyWith =>
      __$$GetWalletsImplCopyWithImpl<_$GetWalletsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateWalletDto dto) createWallet,
    required TResult Function(String userId) fixAssignedWallets,
    required TResult Function(String userId) getWallets,
    required TResult Function(String walletId) selectWallet,
  }) {
    return getWallets(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateWalletDto dto)? createWallet,
    TResult? Function(String userId)? fixAssignedWallets,
    TResult? Function(String userId)? getWallets,
    TResult? Function(String walletId)? selectWallet,
  }) {
    return getWallets?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateWalletDto dto)? createWallet,
    TResult Function(String userId)? fixAssignedWallets,
    TResult Function(String userId)? getWallets,
    TResult Function(String walletId)? selectWallet,
    required TResult orElse(),
  }) {
    if (getWallets != null) {
      return getWallets(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWallet value) createWallet,
    required TResult Function(_FixUnassignedWallets value) fixAssignedWallets,
    required TResult Function(_GetWallets value) getWallets,
    required TResult Function(_SelectWallet value) selectWallet,
  }) {
    return getWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWallet value)? createWallet,
    TResult? Function(_FixUnassignedWallets value)? fixAssignedWallets,
    TResult? Function(_GetWallets value)? getWallets,
    TResult? Function(_SelectWallet value)? selectWallet,
  }) {
    return getWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWallet value)? createWallet,
    TResult Function(_FixUnassignedWallets value)? fixAssignedWallets,
    TResult Function(_GetWallets value)? getWallets,
    TResult Function(_SelectWallet value)? selectWallet,
    required TResult orElse(),
  }) {
    if (getWallets != null) {
      return getWallets(this);
    }
    return orElse();
  }
}

abstract class _GetWallets implements WalletEvent {
  const factory _GetWallets({required final String userId}) = _$GetWalletsImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetWalletsImplCopyWith<_$GetWalletsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectWalletImplCopyWith<$Res> {
  factory _$$SelectWalletImplCopyWith(
          _$SelectWalletImpl value, $Res Function(_$SelectWalletImpl) then) =
      __$$SelectWalletImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String walletId});
}

/// @nodoc
class __$$SelectWalletImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$SelectWalletImpl>
    implements _$$SelectWalletImplCopyWith<$Res> {
  __$$SelectWalletImplCopyWithImpl(
      _$SelectWalletImpl _value, $Res Function(_$SelectWalletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
  }) {
    return _then(_$SelectWalletImpl(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectWalletImpl implements _SelectWallet {
  const _$SelectWalletImpl({required this.walletId});

  @override
  final String walletId;

  @override
  String toString() {
    return 'WalletEvent.selectWallet(walletId: $walletId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectWalletImpl &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectWalletImplCopyWith<_$SelectWalletImpl> get copyWith =>
      __$$SelectWalletImplCopyWithImpl<_$SelectWalletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateWalletDto dto) createWallet,
    required TResult Function(String userId) fixAssignedWallets,
    required TResult Function(String userId) getWallets,
    required TResult Function(String walletId) selectWallet,
  }) {
    return selectWallet(walletId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateWalletDto dto)? createWallet,
    TResult? Function(String userId)? fixAssignedWallets,
    TResult? Function(String userId)? getWallets,
    TResult? Function(String walletId)? selectWallet,
  }) {
    return selectWallet?.call(walletId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateWalletDto dto)? createWallet,
    TResult Function(String userId)? fixAssignedWallets,
    TResult Function(String userId)? getWallets,
    TResult Function(String walletId)? selectWallet,
    required TResult orElse(),
  }) {
    if (selectWallet != null) {
      return selectWallet(walletId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWallet value) createWallet,
    required TResult Function(_FixUnassignedWallets value) fixAssignedWallets,
    required TResult Function(_GetWallets value) getWallets,
    required TResult Function(_SelectWallet value) selectWallet,
  }) {
    return selectWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWallet value)? createWallet,
    TResult? Function(_FixUnassignedWallets value)? fixAssignedWallets,
    TResult? Function(_GetWallets value)? getWallets,
    TResult? Function(_SelectWallet value)? selectWallet,
  }) {
    return selectWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWallet value)? createWallet,
    TResult Function(_FixUnassignedWallets value)? fixAssignedWallets,
    TResult Function(_GetWallets value)? getWallets,
    TResult Function(_SelectWallet value)? selectWallet,
    required TResult orElse(),
  }) {
    if (selectWallet != null) {
      return selectWallet(this);
    }
    return orElse();
  }
}

abstract class _SelectWallet implements WalletEvent {
  const factory _SelectWallet({required final String walletId}) =
      _$SelectWalletImpl;

  String get walletId;
  @JsonKey(ignore: true)
  _$$SelectWalletImplCopyWith<_$SelectWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  List<WalletEntity> get wallets => throw _privateConstructorUsedError;
  bool get walletAdded => throw _privateConstructorUsedError;
  bool get walletsRetrieved => throw _privateConstructorUsedError;
  bool get unassignedWalletsFixed => throw _privateConstructorUsedError;
  WalletEntity? get addedWallet => throw _privateConstructorUsedError;
  WalletEntity? get selectedWallet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      List<WalletEntity> wallets,
      bool walletAdded,
      bool walletsRetrieved,
      bool unassignedWalletsFixed,
      WalletEntity? addedWallet,
      WalletEntity? selectedWallet});
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? wallets = null,
    Object? walletAdded = null,
    Object? walletsRetrieved = null,
    Object? unassignedWalletsFixed = null,
    Object? addedWallet = freezed,
    Object? selectedWallet = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletEntity>,
      walletAdded: null == walletAdded
          ? _value.walletAdded
          : walletAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      walletsRetrieved: null == walletsRetrieved
          ? _value.walletsRetrieved
          : walletsRetrieved // ignore: cast_nullable_to_non_nullable
              as bool,
      unassignedWalletsFixed: null == unassignedWalletsFixed
          ? _value.unassignedWalletsFixed
          : unassignedWalletsFixed // ignore: cast_nullable_to_non_nullable
              as bool,
      addedWallet: freezed == addedWallet
          ? _value.addedWallet
          : addedWallet // ignore: cast_nullable_to_non_nullable
              as WalletEntity?,
      selectedWallet: freezed == selectedWallet
          ? _value.selectedWallet
          : selectedWallet // ignore: cast_nullable_to_non_nullable
              as WalletEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletStateImplCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$WalletStateImplCopyWith(
          _$WalletStateImpl value, $Res Function(_$WalletStateImpl) then) =
      __$$WalletStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      List<WalletEntity> wallets,
      bool walletAdded,
      bool walletsRetrieved,
      bool unassignedWalletsFixed,
      WalletEntity? addedWallet,
      WalletEntity? selectedWallet});
}

/// @nodoc
class __$$WalletStateImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletStateImpl>
    implements _$$WalletStateImplCopyWith<$Res> {
  __$$WalletStateImplCopyWithImpl(
      _$WalletStateImpl _value, $Res Function(_$WalletStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? wallets = null,
    Object? walletAdded = null,
    Object? walletsRetrieved = null,
    Object? unassignedWalletsFixed = null,
    Object? addedWallet = freezed,
    Object? selectedWallet = freezed,
  }) {
    return _then(_$WalletStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      wallets: null == wallets
          ? _value._wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletEntity>,
      walletAdded: null == walletAdded
          ? _value.walletAdded
          : walletAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      walletsRetrieved: null == walletsRetrieved
          ? _value.walletsRetrieved
          : walletsRetrieved // ignore: cast_nullable_to_non_nullable
              as bool,
      unassignedWalletsFixed: null == unassignedWalletsFixed
          ? _value.unassignedWalletsFixed
          : unassignedWalletsFixed // ignore: cast_nullable_to_non_nullable
              as bool,
      addedWallet: freezed == addedWallet
          ? _value.addedWallet
          : addedWallet // ignore: cast_nullable_to_non_nullable
              as WalletEntity?,
      selectedWallet: freezed == selectedWallet
          ? _value.selectedWallet
          : selectedWallet // ignore: cast_nullable_to_non_nullable
              as WalletEntity?,
    ));
  }
}

/// @nodoc

class _$WalletStateImpl implements _WalletState {
  const _$WalletStateImpl(
      {required this.stateStatus,
      required this.errorMessage,
      required this.successMessage,
      required final List<WalletEntity> wallets,
      required this.walletAdded,
      required this.walletsRetrieved,
      required this.unassignedWalletsFixed,
      this.addedWallet,
      this.selectedWallet})
      : _wallets = wallets;

  @override
  final StateStatus stateStatus;
  @override
  final String errorMessage;
  @override
  final String successMessage;
  final List<WalletEntity> _wallets;
  @override
  List<WalletEntity> get wallets {
    if (_wallets is EqualUnmodifiableListView) return _wallets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallets);
  }

  @override
  final bool walletAdded;
  @override
  final bool walletsRetrieved;
  @override
  final bool unassignedWalletsFixed;
  @override
  final WalletEntity? addedWallet;
  @override
  final WalletEntity? selectedWallet;

  @override
  String toString() {
    return 'WalletState(stateStatus: $stateStatus, errorMessage: $errorMessage, successMessage: $successMessage, wallets: $wallets, walletAdded: $walletAdded, walletsRetrieved: $walletsRetrieved, unassignedWalletsFixed: $unassignedWalletsFixed, addedWallet: $addedWallet, selectedWallet: $selectedWallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            const DeepCollectionEquality().equals(other._wallets, _wallets) &&
            (identical(other.walletAdded, walletAdded) ||
                other.walletAdded == walletAdded) &&
            (identical(other.walletsRetrieved, walletsRetrieved) ||
                other.walletsRetrieved == walletsRetrieved) &&
            (identical(other.unassignedWalletsFixed, unassignedWalletsFixed) ||
                other.unassignedWalletsFixed == unassignedWalletsFixed) &&
            (identical(other.addedWallet, addedWallet) ||
                other.addedWallet == addedWallet) &&
            (identical(other.selectedWallet, selectedWallet) ||
                other.selectedWallet == selectedWallet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      errorMessage,
      successMessage,
      const DeepCollectionEquality().hash(_wallets),
      walletAdded,
      walletsRetrieved,
      unassignedWalletsFixed,
      addedWallet,
      selectedWallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      __$$WalletStateImplCopyWithImpl<_$WalletStateImpl>(this, _$identity);
}

abstract class _WalletState implements WalletState {
  const factory _WalletState(
      {required final StateStatus stateStatus,
      required final String errorMessage,
      required final String successMessage,
      required final List<WalletEntity> wallets,
      required final bool walletAdded,
      required final bool walletsRetrieved,
      required final bool unassignedWalletsFixed,
      final WalletEntity? addedWallet,
      final WalletEntity? selectedWallet}) = _$WalletStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  String get errorMessage;
  @override
  String get successMessage;
  @override
  List<WalletEntity> get wallets;
  @override
  bool get walletAdded;
  @override
  bool get walletsRetrieved;
  @override
  bool get unassignedWalletsFixed;
  @override
  WalletEntity? get addedWallet;
  @override
  WalletEntity? get selectedWallet;
  @override
  @JsonKey(ignore: true)
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
