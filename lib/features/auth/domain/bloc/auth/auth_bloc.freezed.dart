// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpUserDto dto) signUp,
    required TResult Function(SignInDto dto) signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuth,
    required TResult Function() validateLocalAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpUserDto dto)? signUp,
    TResult? Function(SignInDto dto)? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuth,
    TResult? Function()? validateLocalAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpUserDto dto)? signUp,
    TResult Function(SignInDto dto)? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuth,
    TResult Function()? validateLocalAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ValidateLocalAuth value) validateLocalAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_ValidateLocalAuth value)? validateLocalAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ValidateLocalAuth value)? validateLocalAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpUserDto dto});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$SignUpImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as SignUpUserDto,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl({required this.dto});

  @override
  final SignUpUserDto dto;

  @override
  String toString() {
    return 'AuthEvent.signUp(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpUserDto dto) signUp,
    required TResult Function(SignInDto dto) signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuth,
    required TResult Function() validateLocalAuth,
  }) {
    return signUp(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpUserDto dto)? signUp,
    TResult? Function(SignInDto dto)? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuth,
    TResult? Function()? validateLocalAuth,
  }) {
    return signUp?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpUserDto dto)? signUp,
    TResult Function(SignInDto dto)? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuth,
    TResult Function()? validateLocalAuth,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ValidateLocalAuth value) validateLocalAuth,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_ValidateLocalAuth value)? validateLocalAuth,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ValidateLocalAuth value)? validateLocalAuth,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp({required final SignUpUserDto dto}) = _$SignUpImpl;

  SignUpUserDto get dto;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInDto dto});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$SignInImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as SignInDto,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl({required this.dto});

  @override
  final SignInDto dto;

  @override
  String toString() {
    return 'AuthEvent.signIn(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpUserDto dto) signUp,
    required TResult Function(SignInDto dto) signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuth,
    required TResult Function() validateLocalAuth,
  }) {
    return signIn(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpUserDto dto)? signUp,
    TResult? Function(SignInDto dto)? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuth,
    TResult? Function()? validateLocalAuth,
  }) {
    return signIn?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpUserDto dto)? signUp,
    TResult Function(SignInDto dto)? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuth,
    TResult Function()? validateLocalAuth,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ValidateLocalAuth value) validateLocalAuth,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_ValidateLocalAuth value)? validateLocalAuth,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ValidateLocalAuth value)? validateLocalAuth,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn({required final SignInDto dto}) = _$SignInImpl;

  SignInDto get dto;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpUserDto dto) signUp,
    required TResult Function(SignInDto dto) signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuth,
    required TResult Function() validateLocalAuth,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpUserDto dto)? signUp,
    TResult? Function(SignInDto dto)? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuth,
    TResult? Function()? validateLocalAuth,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpUserDto dto)? signUp,
    TResult Function(SignInDto dto)? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuth,
    TResult Function()? validateLocalAuth,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ValidateLocalAuth value) validateLocalAuth,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_ValidateLocalAuth value)? validateLocalAuth,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ValidateLocalAuth value)? validateLocalAuth,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$CheckAuthImplCopyWith<$Res> {
  factory _$$CheckAuthImplCopyWith(
          _$CheckAuthImpl value, $Res Function(_$CheckAuthImpl) then) =
      __$$CheckAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthImpl>
    implements _$$CheckAuthImplCopyWith<$Res> {
  __$$CheckAuthImplCopyWithImpl(
      _$CheckAuthImpl _value, $Res Function(_$CheckAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuthImpl implements _CheckAuth {
  const _$CheckAuthImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpUserDto dto) signUp,
    required TResult Function(SignInDto dto) signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuth,
    required TResult Function() validateLocalAuth,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpUserDto dto)? signUp,
    TResult? Function(SignInDto dto)? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuth,
    TResult? Function()? validateLocalAuth,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpUserDto dto)? signUp,
    TResult Function(SignInDto dto)? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuth,
    TResult Function()? validateLocalAuth,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ValidateLocalAuth value) validateLocalAuth,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_ValidateLocalAuth value)? validateLocalAuth,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ValidateLocalAuth value)? validateLocalAuth,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AuthEvent {
  const factory _CheckAuth() = _$CheckAuthImpl;
}

/// @nodoc
abstract class _$$ValidateLocalAuthImplCopyWith<$Res> {
  factory _$$ValidateLocalAuthImplCopyWith(_$ValidateLocalAuthImpl value,
          $Res Function(_$ValidateLocalAuthImpl) then) =
      __$$ValidateLocalAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateLocalAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ValidateLocalAuthImpl>
    implements _$$ValidateLocalAuthImplCopyWith<$Res> {
  __$$ValidateLocalAuthImplCopyWithImpl(_$ValidateLocalAuthImpl _value,
      $Res Function(_$ValidateLocalAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateLocalAuthImpl implements _ValidateLocalAuth {
  const _$ValidateLocalAuthImpl();

  @override
  String toString() {
    return 'AuthEvent.validateLocalAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateLocalAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpUserDto dto) signUp,
    required TResult Function(SignInDto dto) signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuth,
    required TResult Function() validateLocalAuth,
  }) {
    return validateLocalAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpUserDto dto)? signUp,
    TResult? Function(SignInDto dto)? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuth,
    TResult? Function()? validateLocalAuth,
  }) {
    return validateLocalAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpUserDto dto)? signUp,
    TResult Function(SignInDto dto)? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuth,
    TResult Function()? validateLocalAuth,
    required TResult orElse(),
  }) {
    if (validateLocalAuth != null) {
      return validateLocalAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ValidateLocalAuth value) validateLocalAuth,
  }) {
    return validateLocalAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_ValidateLocalAuth value)? validateLocalAuth,
  }) {
    return validateLocalAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ValidateLocalAuth value)? validateLocalAuth,
    required TResult orElse(),
  }) {
    if (validateLocalAuth != null) {
      return validateLocalAuth(this);
    }
    return orElse();
  }
}

abstract class _ValidateLocalAuth implements AuthEvent {
  const factory _ValidateLocalAuth() = _$ValidateLocalAuthImpl;
}

/// @nodoc
mixin _$AuthState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  AuthUserEntity? get authUserEntity => throw _privateConstructorUsedError;
  bool get proceedToLogin => throw _privateConstructorUsedError;
  bool get proceedToLogout => throw _privateConstructorUsedError;
  bool get proceedLocalAuth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      AuthUserEntity? authUserEntity,
      bool proceedToLogin,
      bool proceedToLogout,
      bool proceedLocalAuth});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    Object? authUserEntity = freezed,
    Object? proceedToLogin = null,
    Object? proceedToLogout = null,
    Object? proceedLocalAuth = null,
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
      authUserEntity: freezed == authUserEntity
          ? _value.authUserEntity
          : authUserEntity // ignore: cast_nullable_to_non_nullable
              as AuthUserEntity?,
      proceedToLogin: null == proceedToLogin
          ? _value.proceedToLogin
          : proceedToLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToLogout: null == proceedToLogout
          ? _value.proceedToLogout
          : proceedToLogout // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedLocalAuth: null == proceedLocalAuth
          ? _value.proceedLocalAuth
          : proceedLocalAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      AuthUserEntity? authUserEntity,
      bool proceedToLogin,
      bool proceedToLogout,
      bool proceedLocalAuth});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? authUserEntity = freezed,
    Object? proceedToLogin = null,
    Object? proceedToLogout = null,
    Object? proceedLocalAuth = null,
  }) {
    return _then(_$AuthStateImpl(
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
      authUserEntity: freezed == authUserEntity
          ? _value.authUserEntity
          : authUserEntity // ignore: cast_nullable_to_non_nullable
              as AuthUserEntity?,
      proceedToLogin: null == proceedToLogin
          ? _value.proceedToLogin
          : proceedToLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToLogout: null == proceedToLogout
          ? _value.proceedToLogout
          : proceedToLogout // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedLocalAuth: null == proceedLocalAuth
          ? _value.proceedLocalAuth
          : proceedLocalAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.stateStatus,
      required this.errorMessage,
      required this.successMessage,
      this.authUserEntity,
      required this.proceedToLogin,
      required this.proceedToLogout,
      required this.proceedLocalAuth});

  @override
  final StateStatus stateStatus;
  @override
  final String errorMessage;
  @override
  final String successMessage;
  @override
  final AuthUserEntity? authUserEntity;
  @override
  final bool proceedToLogin;
  @override
  final bool proceedToLogout;
  @override
  final bool proceedLocalAuth;

  @override
  String toString() {
    return 'AuthState(stateStatus: $stateStatus, errorMessage: $errorMessage, successMessage: $successMessage, authUserEntity: $authUserEntity, proceedToLogin: $proceedToLogin, proceedToLogout: $proceedToLogout, proceedLocalAuth: $proceedLocalAuth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.authUserEntity, authUserEntity) ||
                other.authUserEntity == authUserEntity) &&
            (identical(other.proceedToLogin, proceedToLogin) ||
                other.proceedToLogin == proceedToLogin) &&
            (identical(other.proceedToLogout, proceedToLogout) ||
                other.proceedToLogout == proceedToLogout) &&
            (identical(other.proceedLocalAuth, proceedLocalAuth) ||
                other.proceedLocalAuth == proceedLocalAuth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      errorMessage,
      successMessage,
      authUserEntity,
      proceedToLogin,
      proceedToLogout,
      proceedLocalAuth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final StateStatus stateStatus,
      required final String errorMessage,
      required final String successMessage,
      final AuthUserEntity? authUserEntity,
      required final bool proceedToLogin,
      required final bool proceedToLogout,
      required final bool proceedLocalAuth}) = _$AuthStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  String get errorMessage;
  @override
  String get successMessage;
  @override
  AuthUserEntity? get authUserEntity;
  @override
  bool get proceedToLogin;
  @override
  bool get proceedToLogout;
  @override
  bool get proceedLocalAuth;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
