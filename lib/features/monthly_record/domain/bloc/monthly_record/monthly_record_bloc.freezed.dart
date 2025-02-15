// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_record_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MonthlyRecordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> walletIds) getMonthlyRecords,
    required TResult Function(CreateMonthlyRecordDto dto) createMonthlyRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> walletIds)? getMonthlyRecords,
    TResult? Function(CreateMonthlyRecordDto dto)? createMonthlyRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> walletIds)? getMonthlyRecords,
    TResult Function(CreateMonthlyRecordDto dto)? createMonthlyRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyRecords value) getMonthlyRecords,
    required TResult Function(_CreateMonthlyRecord value) createMonthlyRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyRecords value)? getMonthlyRecords,
    TResult? Function(_CreateMonthlyRecord value)? createMonthlyRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyRecords value)? getMonthlyRecords,
    TResult Function(_CreateMonthlyRecord value)? createMonthlyRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyRecordEventCopyWith<$Res> {
  factory $MonthlyRecordEventCopyWith(
          MonthlyRecordEvent value, $Res Function(MonthlyRecordEvent) then) =
      _$MonthlyRecordEventCopyWithImpl<$Res, MonthlyRecordEvent>;
}

/// @nodoc
class _$MonthlyRecordEventCopyWithImpl<$Res, $Val extends MonthlyRecordEvent>
    implements $MonthlyRecordEventCopyWith<$Res> {
  _$MonthlyRecordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMonthlyRecordsImplCopyWith<$Res> {
  factory _$$GetMonthlyRecordsImplCopyWith(_$GetMonthlyRecordsImpl value,
          $Res Function(_$GetMonthlyRecordsImpl) then) =
      __$$GetMonthlyRecordsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> walletIds});
}

/// @nodoc
class __$$GetMonthlyRecordsImplCopyWithImpl<$Res>
    extends _$MonthlyRecordEventCopyWithImpl<$Res, _$GetMonthlyRecordsImpl>
    implements _$$GetMonthlyRecordsImplCopyWith<$Res> {
  __$$GetMonthlyRecordsImplCopyWithImpl(_$GetMonthlyRecordsImpl _value,
      $Res Function(_$GetMonthlyRecordsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletIds = null,
  }) {
    return _then(_$GetMonthlyRecordsImpl(
      walletIds: null == walletIds
          ? _value._walletIds
          : walletIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetMonthlyRecordsImpl implements _GetMonthlyRecords {
  const _$GetMonthlyRecordsImpl({required final List<String> walletIds})
      : _walletIds = walletIds;

  final List<String> _walletIds;
  @override
  List<String> get walletIds {
    if (_walletIds is EqualUnmodifiableListView) return _walletIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_walletIds);
  }

  @override
  String toString() {
    return 'MonthlyRecordEvent.getMonthlyRecords(walletIds: $walletIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMonthlyRecordsImpl &&
            const DeepCollectionEquality()
                .equals(other._walletIds, _walletIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_walletIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMonthlyRecordsImplCopyWith<_$GetMonthlyRecordsImpl> get copyWith =>
      __$$GetMonthlyRecordsImplCopyWithImpl<_$GetMonthlyRecordsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> walletIds) getMonthlyRecords,
    required TResult Function(CreateMonthlyRecordDto dto) createMonthlyRecord,
  }) {
    return getMonthlyRecords(walletIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> walletIds)? getMonthlyRecords,
    TResult? Function(CreateMonthlyRecordDto dto)? createMonthlyRecord,
  }) {
    return getMonthlyRecords?.call(walletIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> walletIds)? getMonthlyRecords,
    TResult Function(CreateMonthlyRecordDto dto)? createMonthlyRecord,
    required TResult orElse(),
  }) {
    if (getMonthlyRecords != null) {
      return getMonthlyRecords(walletIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyRecords value) getMonthlyRecords,
    required TResult Function(_CreateMonthlyRecord value) createMonthlyRecord,
  }) {
    return getMonthlyRecords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyRecords value)? getMonthlyRecords,
    TResult? Function(_CreateMonthlyRecord value)? createMonthlyRecord,
  }) {
    return getMonthlyRecords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyRecords value)? getMonthlyRecords,
    TResult Function(_CreateMonthlyRecord value)? createMonthlyRecord,
    required TResult orElse(),
  }) {
    if (getMonthlyRecords != null) {
      return getMonthlyRecords(this);
    }
    return orElse();
  }
}

abstract class _GetMonthlyRecords implements MonthlyRecordEvent {
  const factory _GetMonthlyRecords({required final List<String> walletIds}) =
      _$GetMonthlyRecordsImpl;

  List<String> get walletIds;
  @JsonKey(ignore: true)
  _$$GetMonthlyRecordsImplCopyWith<_$GetMonthlyRecordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateMonthlyRecordImplCopyWith<$Res> {
  factory _$$CreateMonthlyRecordImplCopyWith(_$CreateMonthlyRecordImpl value,
          $Res Function(_$CreateMonthlyRecordImpl) then) =
      __$$CreateMonthlyRecordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateMonthlyRecordDto dto});
}

/// @nodoc
class __$$CreateMonthlyRecordImplCopyWithImpl<$Res>
    extends _$MonthlyRecordEventCopyWithImpl<$Res, _$CreateMonthlyRecordImpl>
    implements _$$CreateMonthlyRecordImplCopyWith<$Res> {
  __$$CreateMonthlyRecordImplCopyWithImpl(_$CreateMonthlyRecordImpl _value,
      $Res Function(_$CreateMonthlyRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$CreateMonthlyRecordImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateMonthlyRecordDto,
    ));
  }
}

/// @nodoc

class _$CreateMonthlyRecordImpl implements _CreateMonthlyRecord {
  const _$CreateMonthlyRecordImpl({required this.dto});

  @override
  final CreateMonthlyRecordDto dto;

  @override
  String toString() {
    return 'MonthlyRecordEvent.createMonthlyRecord(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMonthlyRecordImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMonthlyRecordImplCopyWith<_$CreateMonthlyRecordImpl> get copyWith =>
      __$$CreateMonthlyRecordImplCopyWithImpl<_$CreateMonthlyRecordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> walletIds) getMonthlyRecords,
    required TResult Function(CreateMonthlyRecordDto dto) createMonthlyRecord,
  }) {
    return createMonthlyRecord(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> walletIds)? getMonthlyRecords,
    TResult? Function(CreateMonthlyRecordDto dto)? createMonthlyRecord,
  }) {
    return createMonthlyRecord?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> walletIds)? getMonthlyRecords,
    TResult Function(CreateMonthlyRecordDto dto)? createMonthlyRecord,
    required TResult orElse(),
  }) {
    if (createMonthlyRecord != null) {
      return createMonthlyRecord(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyRecords value) getMonthlyRecords,
    required TResult Function(_CreateMonthlyRecord value) createMonthlyRecord,
  }) {
    return createMonthlyRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyRecords value)? getMonthlyRecords,
    TResult? Function(_CreateMonthlyRecord value)? createMonthlyRecord,
  }) {
    return createMonthlyRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyRecords value)? getMonthlyRecords,
    TResult Function(_CreateMonthlyRecord value)? createMonthlyRecord,
    required TResult orElse(),
  }) {
    if (createMonthlyRecord != null) {
      return createMonthlyRecord(this);
    }
    return orElse();
  }
}

abstract class _CreateMonthlyRecord implements MonthlyRecordEvent {
  const factory _CreateMonthlyRecord(
      {required final CreateMonthlyRecordDto dto}) = _$CreateMonthlyRecordImpl;

  CreateMonthlyRecordDto get dto;
  @JsonKey(ignore: true)
  _$$CreateMonthlyRecordImplCopyWith<_$CreateMonthlyRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MonthlyRecordState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  Map<String, MonthlyRecordEntity> get monthlyRecordsByWalletId =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MonthlyRecordStateCopyWith<MonthlyRecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyRecordStateCopyWith<$Res> {
  factory $MonthlyRecordStateCopyWith(
          MonthlyRecordState value, $Res Function(MonthlyRecordState) then) =
      _$MonthlyRecordStateCopyWithImpl<$Res, MonthlyRecordState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      Map<String, MonthlyRecordEntity> monthlyRecordsByWalletId});
}

/// @nodoc
class _$MonthlyRecordStateCopyWithImpl<$Res, $Val extends MonthlyRecordState>
    implements $MonthlyRecordStateCopyWith<$Res> {
  _$MonthlyRecordStateCopyWithImpl(this._value, this._then);

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
    Object? monthlyRecordsByWalletId = null,
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
      monthlyRecordsByWalletId: null == monthlyRecordsByWalletId
          ? _value.monthlyRecordsByWalletId
          : monthlyRecordsByWalletId // ignore: cast_nullable_to_non_nullable
              as Map<String, MonthlyRecordEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyRecordStateImplCopyWith<$Res>
    implements $MonthlyRecordStateCopyWith<$Res> {
  factory _$$MonthlyRecordStateImplCopyWith(_$MonthlyRecordStateImpl value,
          $Res Function(_$MonthlyRecordStateImpl) then) =
      __$$MonthlyRecordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      Map<String, MonthlyRecordEntity> monthlyRecordsByWalletId});
}

/// @nodoc
class __$$MonthlyRecordStateImplCopyWithImpl<$Res>
    extends _$MonthlyRecordStateCopyWithImpl<$Res, _$MonthlyRecordStateImpl>
    implements _$$MonthlyRecordStateImplCopyWith<$Res> {
  __$$MonthlyRecordStateImplCopyWithImpl(_$MonthlyRecordStateImpl _value,
      $Res Function(_$MonthlyRecordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? monthlyRecordsByWalletId = null,
  }) {
    return _then(_$MonthlyRecordStateImpl(
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
      monthlyRecordsByWalletId: null == monthlyRecordsByWalletId
          ? _value._monthlyRecordsByWalletId
          : monthlyRecordsByWalletId // ignore: cast_nullable_to_non_nullable
              as Map<String, MonthlyRecordEntity>,
    ));
  }
}

/// @nodoc

class _$MonthlyRecordStateImpl implements _MonthlyRecordState {
  const _$MonthlyRecordStateImpl(
      {required this.stateStatus,
      required this.errorMessage,
      required this.successMessage,
      required final Map<String, MonthlyRecordEntity> monthlyRecordsByWalletId})
      : _monthlyRecordsByWalletId = monthlyRecordsByWalletId;

  @override
  final StateStatus stateStatus;
  @override
  final String errorMessage;
  @override
  final String successMessage;
  final Map<String, MonthlyRecordEntity> _monthlyRecordsByWalletId;
  @override
  Map<String, MonthlyRecordEntity> get monthlyRecordsByWalletId {
    if (_monthlyRecordsByWalletId is EqualUnmodifiableMapView)
      return _monthlyRecordsByWalletId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_monthlyRecordsByWalletId);
  }

  @override
  String toString() {
    return 'MonthlyRecordState(stateStatus: $stateStatus, errorMessage: $errorMessage, successMessage: $successMessage, monthlyRecordsByWalletId: $monthlyRecordsByWalletId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyRecordStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            const DeepCollectionEquality().equals(
                other._monthlyRecordsByWalletId, _monthlyRecordsByWalletId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      errorMessage,
      successMessage,
      const DeepCollectionEquality().hash(_monthlyRecordsByWalletId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyRecordStateImplCopyWith<_$MonthlyRecordStateImpl> get copyWith =>
      __$$MonthlyRecordStateImplCopyWithImpl<_$MonthlyRecordStateImpl>(
          this, _$identity);
}

abstract class _MonthlyRecordState implements MonthlyRecordState {
  const factory _MonthlyRecordState(
      {required final StateStatus stateStatus,
      required final String errorMessage,
      required final String successMessage,
      required final Map<String, MonthlyRecordEntity>
          monthlyRecordsByWalletId}) = _$MonthlyRecordStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  String get errorMessage;
  @override
  String get successMessage;
  @override
  Map<String, MonthlyRecordEntity> get monthlyRecordsByWalletId;
  @override
  @JsonKey(ignore: true)
  _$$MonthlyRecordStateImplCopyWith<_$MonthlyRecordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
