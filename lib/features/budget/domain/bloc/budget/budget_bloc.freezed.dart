// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BudgetEvent {
  Object get dto => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetMonthlyBudgetDto dto) getMonthlyBudget,
    required TResult Function(CreateBudgetDto dto) createBudget,
    required TResult Function(UpdateBudgetDto dto) updateBudget,
    required TResult Function(DeleteBudgetDto dto) deleteBudget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetMonthlyBudgetDto dto)? getMonthlyBudget,
    TResult? Function(CreateBudgetDto dto)? createBudget,
    TResult? Function(UpdateBudgetDto dto)? updateBudget,
    TResult? Function(DeleteBudgetDto dto)? deleteBudget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetMonthlyBudgetDto dto)? getMonthlyBudget,
    TResult Function(CreateBudgetDto dto)? createBudget,
    TResult Function(UpdateBudgetDto dto)? updateBudget,
    TResult Function(DeleteBudgetDto dto)? deleteBudget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyBudget value) getMonthlyBudget,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyBudget value)? getMonthlyBudget,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyBudget value)? getMonthlyBudget,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetEventCopyWith<$Res> {
  factory $BudgetEventCopyWith(
          BudgetEvent value, $Res Function(BudgetEvent) then) =
      _$BudgetEventCopyWithImpl<$Res, BudgetEvent>;
}

/// @nodoc
class _$BudgetEventCopyWithImpl<$Res, $Val extends BudgetEvent>
    implements $BudgetEventCopyWith<$Res> {
  _$BudgetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMonthlyBudgetImplCopyWith<$Res> {
  factory _$$GetMonthlyBudgetImplCopyWith(_$GetMonthlyBudgetImpl value,
          $Res Function(_$GetMonthlyBudgetImpl) then) =
      __$$GetMonthlyBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetMonthlyBudgetDto dto});
}

/// @nodoc
class __$$GetMonthlyBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$GetMonthlyBudgetImpl>
    implements _$$GetMonthlyBudgetImplCopyWith<$Res> {
  __$$GetMonthlyBudgetImplCopyWithImpl(_$GetMonthlyBudgetImpl _value,
      $Res Function(_$GetMonthlyBudgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$GetMonthlyBudgetImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as GetMonthlyBudgetDto,
    ));
  }
}

/// @nodoc

class _$GetMonthlyBudgetImpl implements _GetMonthlyBudget {
  const _$GetMonthlyBudgetImpl({required this.dto});

  @override
  final GetMonthlyBudgetDto dto;

  @override
  String toString() {
    return 'BudgetEvent.getMonthlyBudget(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMonthlyBudgetImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMonthlyBudgetImplCopyWith<_$GetMonthlyBudgetImpl> get copyWith =>
      __$$GetMonthlyBudgetImplCopyWithImpl<_$GetMonthlyBudgetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetMonthlyBudgetDto dto) getMonthlyBudget,
    required TResult Function(CreateBudgetDto dto) createBudget,
    required TResult Function(UpdateBudgetDto dto) updateBudget,
    required TResult Function(DeleteBudgetDto dto) deleteBudget,
  }) {
    return getMonthlyBudget(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetMonthlyBudgetDto dto)? getMonthlyBudget,
    TResult? Function(CreateBudgetDto dto)? createBudget,
    TResult? Function(UpdateBudgetDto dto)? updateBudget,
    TResult? Function(DeleteBudgetDto dto)? deleteBudget,
  }) {
    return getMonthlyBudget?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetMonthlyBudgetDto dto)? getMonthlyBudget,
    TResult Function(CreateBudgetDto dto)? createBudget,
    TResult Function(UpdateBudgetDto dto)? updateBudget,
    TResult Function(DeleteBudgetDto dto)? deleteBudget,
    required TResult orElse(),
  }) {
    if (getMonthlyBudget != null) {
      return getMonthlyBudget(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyBudget value) getMonthlyBudget,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
  }) {
    return getMonthlyBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyBudget value)? getMonthlyBudget,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
  }) {
    return getMonthlyBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyBudget value)? getMonthlyBudget,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    required TResult orElse(),
  }) {
    if (getMonthlyBudget != null) {
      return getMonthlyBudget(this);
    }
    return orElse();
  }
}

abstract class _GetMonthlyBudget implements BudgetEvent {
  const factory _GetMonthlyBudget({required final GetMonthlyBudgetDto dto}) =
      _$GetMonthlyBudgetImpl;

  @override
  GetMonthlyBudgetDto get dto;
  @JsonKey(ignore: true)
  _$$GetMonthlyBudgetImplCopyWith<_$GetMonthlyBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateBudgetImplCopyWith<$Res> {
  factory _$$CreateBudgetImplCopyWith(
          _$CreateBudgetImpl value, $Res Function(_$CreateBudgetImpl) then) =
      __$$CreateBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateBudgetDto dto});
}

/// @nodoc
class __$$CreateBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$CreateBudgetImpl>
    implements _$$CreateBudgetImplCopyWith<$Res> {
  __$$CreateBudgetImplCopyWithImpl(
      _$CreateBudgetImpl _value, $Res Function(_$CreateBudgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$CreateBudgetImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateBudgetDto,
    ));
  }
}

/// @nodoc

class _$CreateBudgetImpl implements _CreateBudget {
  const _$CreateBudgetImpl({required this.dto});

  @override
  final CreateBudgetDto dto;

  @override
  String toString() {
    return 'BudgetEvent.createBudget(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBudgetImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBudgetImplCopyWith<_$CreateBudgetImpl> get copyWith =>
      __$$CreateBudgetImplCopyWithImpl<_$CreateBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetMonthlyBudgetDto dto) getMonthlyBudget,
    required TResult Function(CreateBudgetDto dto) createBudget,
    required TResult Function(UpdateBudgetDto dto) updateBudget,
    required TResult Function(DeleteBudgetDto dto) deleteBudget,
  }) {
    return createBudget(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetMonthlyBudgetDto dto)? getMonthlyBudget,
    TResult? Function(CreateBudgetDto dto)? createBudget,
    TResult? Function(UpdateBudgetDto dto)? updateBudget,
    TResult? Function(DeleteBudgetDto dto)? deleteBudget,
  }) {
    return createBudget?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetMonthlyBudgetDto dto)? getMonthlyBudget,
    TResult Function(CreateBudgetDto dto)? createBudget,
    TResult Function(UpdateBudgetDto dto)? updateBudget,
    TResult Function(DeleteBudgetDto dto)? deleteBudget,
    required TResult orElse(),
  }) {
    if (createBudget != null) {
      return createBudget(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyBudget value) getMonthlyBudget,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
  }) {
    return createBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyBudget value)? getMonthlyBudget,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
  }) {
    return createBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyBudget value)? getMonthlyBudget,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    required TResult orElse(),
  }) {
    if (createBudget != null) {
      return createBudget(this);
    }
    return orElse();
  }
}

abstract class _CreateBudget implements BudgetEvent {
  const factory _CreateBudget({required final CreateBudgetDto dto}) =
      _$CreateBudgetImpl;

  @override
  CreateBudgetDto get dto;
  @JsonKey(ignore: true)
  _$$CreateBudgetImplCopyWith<_$CreateBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBudgetImplCopyWith<$Res> {
  factory _$$UpdateBudgetImplCopyWith(
          _$UpdateBudgetImpl value, $Res Function(_$UpdateBudgetImpl) then) =
      __$$UpdateBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateBudgetDto dto});
}

/// @nodoc
class __$$UpdateBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$UpdateBudgetImpl>
    implements _$$UpdateBudgetImplCopyWith<$Res> {
  __$$UpdateBudgetImplCopyWithImpl(
      _$UpdateBudgetImpl _value, $Res Function(_$UpdateBudgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$UpdateBudgetImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as UpdateBudgetDto,
    ));
  }
}

/// @nodoc

class _$UpdateBudgetImpl implements _UpdateBudget {
  const _$UpdateBudgetImpl({required this.dto});

  @override
  final UpdateBudgetDto dto;

  @override
  String toString() {
    return 'BudgetEvent.updateBudget(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBudgetImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBudgetImplCopyWith<_$UpdateBudgetImpl> get copyWith =>
      __$$UpdateBudgetImplCopyWithImpl<_$UpdateBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetMonthlyBudgetDto dto) getMonthlyBudget,
    required TResult Function(CreateBudgetDto dto) createBudget,
    required TResult Function(UpdateBudgetDto dto) updateBudget,
    required TResult Function(DeleteBudgetDto dto) deleteBudget,
  }) {
    return updateBudget(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetMonthlyBudgetDto dto)? getMonthlyBudget,
    TResult? Function(CreateBudgetDto dto)? createBudget,
    TResult? Function(UpdateBudgetDto dto)? updateBudget,
    TResult? Function(DeleteBudgetDto dto)? deleteBudget,
  }) {
    return updateBudget?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetMonthlyBudgetDto dto)? getMonthlyBudget,
    TResult Function(CreateBudgetDto dto)? createBudget,
    TResult Function(UpdateBudgetDto dto)? updateBudget,
    TResult Function(DeleteBudgetDto dto)? deleteBudget,
    required TResult orElse(),
  }) {
    if (updateBudget != null) {
      return updateBudget(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyBudget value) getMonthlyBudget,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
  }) {
    return updateBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyBudget value)? getMonthlyBudget,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
  }) {
    return updateBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyBudget value)? getMonthlyBudget,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    required TResult orElse(),
  }) {
    if (updateBudget != null) {
      return updateBudget(this);
    }
    return orElse();
  }
}

abstract class _UpdateBudget implements BudgetEvent {
  const factory _UpdateBudget({required final UpdateBudgetDto dto}) =
      _$UpdateBudgetImpl;

  @override
  UpdateBudgetDto get dto;
  @JsonKey(ignore: true)
  _$$UpdateBudgetImplCopyWith<_$UpdateBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBudgetImplCopyWith<$Res> {
  factory _$$DeleteBudgetImplCopyWith(
          _$DeleteBudgetImpl value, $Res Function(_$DeleteBudgetImpl) then) =
      __$$DeleteBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteBudgetDto dto});
}

/// @nodoc
class __$$DeleteBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$DeleteBudgetImpl>
    implements _$$DeleteBudgetImplCopyWith<$Res> {
  __$$DeleteBudgetImplCopyWithImpl(
      _$DeleteBudgetImpl _value, $Res Function(_$DeleteBudgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$DeleteBudgetImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as DeleteBudgetDto,
    ));
  }
}

/// @nodoc

class _$DeleteBudgetImpl implements _DeleteBudget {
  const _$DeleteBudgetImpl({required this.dto});

  @override
  final DeleteBudgetDto dto;

  @override
  String toString() {
    return 'BudgetEvent.deleteBudget(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBudgetImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBudgetImplCopyWith<_$DeleteBudgetImpl> get copyWith =>
      __$$DeleteBudgetImplCopyWithImpl<_$DeleteBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetMonthlyBudgetDto dto) getMonthlyBudget,
    required TResult Function(CreateBudgetDto dto) createBudget,
    required TResult Function(UpdateBudgetDto dto) updateBudget,
    required TResult Function(DeleteBudgetDto dto) deleteBudget,
  }) {
    return deleteBudget(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetMonthlyBudgetDto dto)? getMonthlyBudget,
    TResult? Function(CreateBudgetDto dto)? createBudget,
    TResult? Function(UpdateBudgetDto dto)? updateBudget,
    TResult? Function(DeleteBudgetDto dto)? deleteBudget,
  }) {
    return deleteBudget?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetMonthlyBudgetDto dto)? getMonthlyBudget,
    TResult Function(CreateBudgetDto dto)? createBudget,
    TResult Function(UpdateBudgetDto dto)? updateBudget,
    TResult Function(DeleteBudgetDto dto)? deleteBudget,
    required TResult orElse(),
  }) {
    if (deleteBudget != null) {
      return deleteBudget(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyBudget value) getMonthlyBudget,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
  }) {
    return deleteBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyBudget value)? getMonthlyBudget,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
  }) {
    return deleteBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyBudget value)? getMonthlyBudget,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    required TResult orElse(),
  }) {
    if (deleteBudget != null) {
      return deleteBudget(this);
    }
    return orElse();
  }
}

abstract class _DeleteBudget implements BudgetEvent {
  const factory _DeleteBudget({required final DeleteBudgetDto dto}) =
      _$DeleteBudgetImpl;

  @override
  DeleteBudgetDto get dto;
  @JsonKey(ignore: true)
  _$$DeleteBudgetImplCopyWith<_$DeleteBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BudgetState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  Map<String, BudgetEntity> get budgetById =>
      throw _privateConstructorUsedError;
  bool get updated => throw _privateConstructorUsedError;
  bool get retrieved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BudgetStateCopyWith<BudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetStateCopyWith<$Res> {
  factory $BudgetStateCopyWith(
          BudgetState value, $Res Function(BudgetState) then) =
      _$BudgetStateCopyWithImpl<$Res, BudgetState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      Map<String, BudgetEntity> budgetById,
      bool updated,
      bool retrieved});
}

/// @nodoc
class _$BudgetStateCopyWithImpl<$Res, $Val extends BudgetState>
    implements $BudgetStateCopyWith<$Res> {
  _$BudgetStateCopyWithImpl(this._value, this._then);

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
    Object? budgetById = null,
    Object? updated = null,
    Object? retrieved = null,
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
      budgetById: null == budgetById
          ? _value.budgetById
          : budgetById // ignore: cast_nullable_to_non_nullable
              as Map<String, BudgetEntity>,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
      retrieved: null == retrieved
          ? _value.retrieved
          : retrieved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetStateImplCopyWith<$Res>
    implements $BudgetStateCopyWith<$Res> {
  factory _$$BudgetStateImplCopyWith(
          _$BudgetStateImpl value, $Res Function(_$BudgetStateImpl) then) =
      __$$BudgetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      Map<String, BudgetEntity> budgetById,
      bool updated,
      bool retrieved});
}

/// @nodoc
class __$$BudgetStateImplCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res, _$BudgetStateImpl>
    implements _$$BudgetStateImplCopyWith<$Res> {
  __$$BudgetStateImplCopyWithImpl(
      _$BudgetStateImpl _value, $Res Function(_$BudgetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? budgetById = null,
    Object? updated = null,
    Object? retrieved = null,
  }) {
    return _then(_$BudgetStateImpl(
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
      budgetById: null == budgetById
          ? _value._budgetById
          : budgetById // ignore: cast_nullable_to_non_nullable
              as Map<String, BudgetEntity>,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
      retrieved: null == retrieved
          ? _value.retrieved
          : retrieved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BudgetStateImpl implements _BudgetState {
  _$BudgetStateImpl(
      {required this.stateStatus,
      required this.errorMessage,
      required this.successMessage,
      required final Map<String, BudgetEntity> budgetById,
      required this.updated,
      required this.retrieved})
      : _budgetById = budgetById;

  @override
  final StateStatus stateStatus;
  @override
  final String errorMessage;
  @override
  final String successMessage;
  final Map<String, BudgetEntity> _budgetById;
  @override
  Map<String, BudgetEntity> get budgetById {
    if (_budgetById is EqualUnmodifiableMapView) return _budgetById;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_budgetById);
  }

  @override
  final bool updated;
  @override
  final bool retrieved;

  @override
  String toString() {
    return 'BudgetState(stateStatus: $stateStatus, errorMessage: $errorMessage, successMessage: $successMessage, budgetById: $budgetById, updated: $updated, retrieved: $retrieved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            const DeepCollectionEquality()
                .equals(other._budgetById, _budgetById) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.retrieved, retrieved) ||
                other.retrieved == retrieved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      errorMessage,
      successMessage,
      const DeepCollectionEquality().hash(_budgetById),
      updated,
      retrieved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetStateImplCopyWith<_$BudgetStateImpl> get copyWith =>
      __$$BudgetStateImplCopyWithImpl<_$BudgetStateImpl>(this, _$identity);
}

abstract class _BudgetState implements BudgetState {
  factory _BudgetState(
      {required final StateStatus stateStatus,
      required final String errorMessage,
      required final String successMessage,
      required final Map<String, BudgetEntity> budgetById,
      required final bool updated,
      required final bool retrieved}) = _$BudgetStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  String get errorMessage;
  @override
  String get successMessage;
  @override
  Map<String, BudgetEntity> get budgetById;
  @override
  bool get updated;
  @override
  bool get retrieved;
  @override
  @JsonKey(ignore: true)
  _$$BudgetStateImplCopyWith<_$BudgetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
