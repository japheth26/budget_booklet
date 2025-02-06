// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TagEvent {
  Object get dto => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTagsDto dto) getAllTags,
    required TResult Function(CreateTagDto dto) createTag,
    required TResult Function(UpdateTagDto dto) updateTag,
    required TResult Function(DeleteTagDto dto) deleteTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTagsDto dto)? getAllTags,
    TResult? Function(CreateTagDto dto)? createTag,
    TResult? Function(UpdateTagDto dto)? updateTag,
    TResult? Function(DeleteTagDto dto)? deleteTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTagsDto dto)? getAllTags,
    TResult Function(CreateTagDto dto)? createTag,
    TResult Function(UpdateTagDto dto)? updateTag,
    TResult Function(DeleteTagDto dto)? deleteTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTags value) getAllTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_UpdateTag value) updateTag,
    required TResult Function(_DeleteTag value) deleteTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTags value)? getAllTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_UpdateTag value)? updateTag,
    TResult? Function(_DeleteTag value)? deleteTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTags value)? getAllTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_UpdateTag value)? updateTag,
    TResult Function(_DeleteTag value)? deleteTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagEventCopyWith<$Res> {
  factory $TagEventCopyWith(TagEvent value, $Res Function(TagEvent) then) =
      _$TagEventCopyWithImpl<$Res, TagEvent>;
}

/// @nodoc
class _$TagEventCopyWithImpl<$Res, $Val extends TagEvent>
    implements $TagEventCopyWith<$Res> {
  _$TagEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllTagsImplCopyWith<$Res> {
  factory _$$GetAllTagsImplCopyWith(
          _$GetAllTagsImpl value, $Res Function(_$GetAllTagsImpl) then) =
      __$$GetAllTagsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllTagsDto dto});
}

/// @nodoc
class __$$GetAllTagsImplCopyWithImpl<$Res>
    extends _$TagEventCopyWithImpl<$Res, _$GetAllTagsImpl>
    implements _$$GetAllTagsImplCopyWith<$Res> {
  __$$GetAllTagsImplCopyWithImpl(
      _$GetAllTagsImpl _value, $Res Function(_$GetAllTagsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$GetAllTagsImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as GetAllTagsDto,
    ));
  }
}

/// @nodoc

class _$GetAllTagsImpl implements _GetAllTags {
  const _$GetAllTagsImpl({required this.dto});

  @override
  final GetAllTagsDto dto;

  @override
  String toString() {
    return 'TagEvent.getAllTags(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTagsImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllTagsImplCopyWith<_$GetAllTagsImpl> get copyWith =>
      __$$GetAllTagsImplCopyWithImpl<_$GetAllTagsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTagsDto dto) getAllTags,
    required TResult Function(CreateTagDto dto) createTag,
    required TResult Function(UpdateTagDto dto) updateTag,
    required TResult Function(DeleteTagDto dto) deleteTag,
  }) {
    return getAllTags(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTagsDto dto)? getAllTags,
    TResult? Function(CreateTagDto dto)? createTag,
    TResult? Function(UpdateTagDto dto)? updateTag,
    TResult? Function(DeleteTagDto dto)? deleteTag,
  }) {
    return getAllTags?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTagsDto dto)? getAllTags,
    TResult Function(CreateTagDto dto)? createTag,
    TResult Function(UpdateTagDto dto)? updateTag,
    TResult Function(DeleteTagDto dto)? deleteTag,
    required TResult orElse(),
  }) {
    if (getAllTags != null) {
      return getAllTags(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTags value) getAllTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_UpdateTag value) updateTag,
    required TResult Function(_DeleteTag value) deleteTag,
  }) {
    return getAllTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTags value)? getAllTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_UpdateTag value)? updateTag,
    TResult? Function(_DeleteTag value)? deleteTag,
  }) {
    return getAllTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTags value)? getAllTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_UpdateTag value)? updateTag,
    TResult Function(_DeleteTag value)? deleteTag,
    required TResult orElse(),
  }) {
    if (getAllTags != null) {
      return getAllTags(this);
    }
    return orElse();
  }
}

abstract class _GetAllTags implements TagEvent {
  const factory _GetAllTags({required final GetAllTagsDto dto}) =
      _$GetAllTagsImpl;

  @override
  GetAllTagsDto get dto;
  @JsonKey(ignore: true)
  _$$GetAllTagsImplCopyWith<_$GetAllTagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTagImplCopyWith<$Res> {
  factory _$$CreateTagImplCopyWith(
          _$CreateTagImpl value, $Res Function(_$CreateTagImpl) then) =
      __$$CreateTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateTagDto dto});
}

/// @nodoc
class __$$CreateTagImplCopyWithImpl<$Res>
    extends _$TagEventCopyWithImpl<$Res, _$CreateTagImpl>
    implements _$$CreateTagImplCopyWith<$Res> {
  __$$CreateTagImplCopyWithImpl(
      _$CreateTagImpl _value, $Res Function(_$CreateTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$CreateTagImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateTagDto,
    ));
  }
}

/// @nodoc

class _$CreateTagImpl implements _CreateTag {
  const _$CreateTagImpl({required this.dto});

  @override
  final CreateTagDto dto;

  @override
  String toString() {
    return 'TagEvent.createTag(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTagImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTagImplCopyWith<_$CreateTagImpl> get copyWith =>
      __$$CreateTagImplCopyWithImpl<_$CreateTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTagsDto dto) getAllTags,
    required TResult Function(CreateTagDto dto) createTag,
    required TResult Function(UpdateTagDto dto) updateTag,
    required TResult Function(DeleteTagDto dto) deleteTag,
  }) {
    return createTag(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTagsDto dto)? getAllTags,
    TResult? Function(CreateTagDto dto)? createTag,
    TResult? Function(UpdateTagDto dto)? updateTag,
    TResult? Function(DeleteTagDto dto)? deleteTag,
  }) {
    return createTag?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTagsDto dto)? getAllTags,
    TResult Function(CreateTagDto dto)? createTag,
    TResult Function(UpdateTagDto dto)? updateTag,
    TResult Function(DeleteTagDto dto)? deleteTag,
    required TResult orElse(),
  }) {
    if (createTag != null) {
      return createTag(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTags value) getAllTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_UpdateTag value) updateTag,
    required TResult Function(_DeleteTag value) deleteTag,
  }) {
    return createTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTags value)? getAllTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_UpdateTag value)? updateTag,
    TResult? Function(_DeleteTag value)? deleteTag,
  }) {
    return createTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTags value)? getAllTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_UpdateTag value)? updateTag,
    TResult Function(_DeleteTag value)? deleteTag,
    required TResult orElse(),
  }) {
    if (createTag != null) {
      return createTag(this);
    }
    return orElse();
  }
}

abstract class _CreateTag implements TagEvent {
  const factory _CreateTag({required final CreateTagDto dto}) = _$CreateTagImpl;

  @override
  CreateTagDto get dto;
  @JsonKey(ignore: true)
  _$$CreateTagImplCopyWith<_$CreateTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTagImplCopyWith<$Res> {
  factory _$$UpdateTagImplCopyWith(
          _$UpdateTagImpl value, $Res Function(_$UpdateTagImpl) then) =
      __$$UpdateTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateTagDto dto});
}

/// @nodoc
class __$$UpdateTagImplCopyWithImpl<$Res>
    extends _$TagEventCopyWithImpl<$Res, _$UpdateTagImpl>
    implements _$$UpdateTagImplCopyWith<$Res> {
  __$$UpdateTagImplCopyWithImpl(
      _$UpdateTagImpl _value, $Res Function(_$UpdateTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$UpdateTagImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as UpdateTagDto,
    ));
  }
}

/// @nodoc

class _$UpdateTagImpl implements _UpdateTag {
  const _$UpdateTagImpl({required this.dto});

  @override
  final UpdateTagDto dto;

  @override
  String toString() {
    return 'TagEvent.updateTag(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTagImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTagImplCopyWith<_$UpdateTagImpl> get copyWith =>
      __$$UpdateTagImplCopyWithImpl<_$UpdateTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTagsDto dto) getAllTags,
    required TResult Function(CreateTagDto dto) createTag,
    required TResult Function(UpdateTagDto dto) updateTag,
    required TResult Function(DeleteTagDto dto) deleteTag,
  }) {
    return updateTag(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTagsDto dto)? getAllTags,
    TResult? Function(CreateTagDto dto)? createTag,
    TResult? Function(UpdateTagDto dto)? updateTag,
    TResult? Function(DeleteTagDto dto)? deleteTag,
  }) {
    return updateTag?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTagsDto dto)? getAllTags,
    TResult Function(CreateTagDto dto)? createTag,
    TResult Function(UpdateTagDto dto)? updateTag,
    TResult Function(DeleteTagDto dto)? deleteTag,
    required TResult orElse(),
  }) {
    if (updateTag != null) {
      return updateTag(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTags value) getAllTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_UpdateTag value) updateTag,
    required TResult Function(_DeleteTag value) deleteTag,
  }) {
    return updateTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTags value)? getAllTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_UpdateTag value)? updateTag,
    TResult? Function(_DeleteTag value)? deleteTag,
  }) {
    return updateTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTags value)? getAllTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_UpdateTag value)? updateTag,
    TResult Function(_DeleteTag value)? deleteTag,
    required TResult orElse(),
  }) {
    if (updateTag != null) {
      return updateTag(this);
    }
    return orElse();
  }
}

abstract class _UpdateTag implements TagEvent {
  const factory _UpdateTag({required final UpdateTagDto dto}) = _$UpdateTagImpl;

  @override
  UpdateTagDto get dto;
  @JsonKey(ignore: true)
  _$$UpdateTagImplCopyWith<_$UpdateTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTagImplCopyWith<$Res> {
  factory _$$DeleteTagImplCopyWith(
          _$DeleteTagImpl value, $Res Function(_$DeleteTagImpl) then) =
      __$$DeleteTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteTagDto dto});
}

/// @nodoc
class __$$DeleteTagImplCopyWithImpl<$Res>
    extends _$TagEventCopyWithImpl<$Res, _$DeleteTagImpl>
    implements _$$DeleteTagImplCopyWith<$Res> {
  __$$DeleteTagImplCopyWithImpl(
      _$DeleteTagImpl _value, $Res Function(_$DeleteTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$DeleteTagImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as DeleteTagDto,
    ));
  }
}

/// @nodoc

class _$DeleteTagImpl implements _DeleteTag {
  const _$DeleteTagImpl({required this.dto});

  @override
  final DeleteTagDto dto;

  @override
  String toString() {
    return 'TagEvent.deleteTag(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTagImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTagImplCopyWith<_$DeleteTagImpl> get copyWith =>
      __$$DeleteTagImplCopyWithImpl<_$DeleteTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTagsDto dto) getAllTags,
    required TResult Function(CreateTagDto dto) createTag,
    required TResult Function(UpdateTagDto dto) updateTag,
    required TResult Function(DeleteTagDto dto) deleteTag,
  }) {
    return deleteTag(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTagsDto dto)? getAllTags,
    TResult? Function(CreateTagDto dto)? createTag,
    TResult? Function(UpdateTagDto dto)? updateTag,
    TResult? Function(DeleteTagDto dto)? deleteTag,
  }) {
    return deleteTag?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTagsDto dto)? getAllTags,
    TResult Function(CreateTagDto dto)? createTag,
    TResult Function(UpdateTagDto dto)? updateTag,
    TResult Function(DeleteTagDto dto)? deleteTag,
    required TResult orElse(),
  }) {
    if (deleteTag != null) {
      return deleteTag(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTags value) getAllTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_UpdateTag value) updateTag,
    required TResult Function(_DeleteTag value) deleteTag,
  }) {
    return deleteTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTags value)? getAllTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_UpdateTag value)? updateTag,
    TResult? Function(_DeleteTag value)? deleteTag,
  }) {
    return deleteTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTags value)? getAllTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_UpdateTag value)? updateTag,
    TResult Function(_DeleteTag value)? deleteTag,
    required TResult orElse(),
  }) {
    if (deleteTag != null) {
      return deleteTag(this);
    }
    return orElse();
  }
}

abstract class _DeleteTag implements TagEvent {
  const factory _DeleteTag({required final DeleteTagDto dto}) = _$DeleteTagImpl;

  @override
  DeleteTagDto get dto;
  @JsonKey(ignore: true)
  _$$DeleteTagImplCopyWith<_$DeleteTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TagState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  List<TagEntity> get incomeTags => throw _privateConstructorUsedError;
  List<TagEntity> get expenseTags => throw _privateConstructorUsedError;
  bool get retrieved => throw _privateConstructorUsedError;
  bool get added => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagStateCopyWith<TagState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagStateCopyWith<$Res> {
  factory $TagStateCopyWith(TagState value, $Res Function(TagState) then) =
      _$TagStateCopyWithImpl<$Res, TagState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      List<TagEntity> incomeTags,
      List<TagEntity> expenseTags,
      bool retrieved,
      bool added});
}

/// @nodoc
class _$TagStateCopyWithImpl<$Res, $Val extends TagState>
    implements $TagStateCopyWith<$Res> {
  _$TagStateCopyWithImpl(this._value, this._then);

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
    Object? incomeTags = null,
    Object? expenseTags = null,
    Object? retrieved = null,
    Object? added = null,
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
      incomeTags: null == incomeTags
          ? _value.incomeTags
          : incomeTags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>,
      expenseTags: null == expenseTags
          ? _value.expenseTags
          : expenseTags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>,
      retrieved: null == retrieved
          ? _value.retrieved
          : retrieved // ignore: cast_nullable_to_non_nullable
              as bool,
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagStateImplCopyWith<$Res>
    implements $TagStateCopyWith<$Res> {
  factory _$$TagStateImplCopyWith(
          _$TagStateImpl value, $Res Function(_$TagStateImpl) then) =
      __$$TagStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      List<TagEntity> incomeTags,
      List<TagEntity> expenseTags,
      bool retrieved,
      bool added});
}

/// @nodoc
class __$$TagStateImplCopyWithImpl<$Res>
    extends _$TagStateCopyWithImpl<$Res, _$TagStateImpl>
    implements _$$TagStateImplCopyWith<$Res> {
  __$$TagStateImplCopyWithImpl(
      _$TagStateImpl _value, $Res Function(_$TagStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? incomeTags = null,
    Object? expenseTags = null,
    Object? retrieved = null,
    Object? added = null,
  }) {
    return _then(_$TagStateImpl(
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
      incomeTags: null == incomeTags
          ? _value._incomeTags
          : incomeTags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>,
      expenseTags: null == expenseTags
          ? _value._expenseTags
          : expenseTags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>,
      retrieved: null == retrieved
          ? _value.retrieved
          : retrieved // ignore: cast_nullable_to_non_nullable
              as bool,
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TagStateImpl implements _TagState {
  const _$TagStateImpl(
      {required this.stateStatus,
      required this.errorMessage,
      required this.successMessage,
      required final List<TagEntity> incomeTags,
      required final List<TagEntity> expenseTags,
      required this.retrieved,
      required this.added})
      : _incomeTags = incomeTags,
        _expenseTags = expenseTags;

  @override
  final StateStatus stateStatus;
  @override
  final String errorMessage;
  @override
  final String successMessage;
  final List<TagEntity> _incomeTags;
  @override
  List<TagEntity> get incomeTags {
    if (_incomeTags is EqualUnmodifiableListView) return _incomeTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeTags);
  }

  final List<TagEntity> _expenseTags;
  @override
  List<TagEntity> get expenseTags {
    if (_expenseTags is EqualUnmodifiableListView) return _expenseTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseTags);
  }

  @override
  final bool retrieved;
  @override
  final bool added;

  @override
  String toString() {
    return 'TagState(stateStatus: $stateStatus, errorMessage: $errorMessage, successMessage: $successMessage, incomeTags: $incomeTags, expenseTags: $expenseTags, retrieved: $retrieved, added: $added)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            const DeepCollectionEquality()
                .equals(other._incomeTags, _incomeTags) &&
            const DeepCollectionEquality()
                .equals(other._expenseTags, _expenseTags) &&
            (identical(other.retrieved, retrieved) ||
                other.retrieved == retrieved) &&
            (identical(other.added, added) || other.added == added));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      errorMessage,
      successMessage,
      const DeepCollectionEquality().hash(_incomeTags),
      const DeepCollectionEquality().hash(_expenseTags),
      retrieved,
      added);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagStateImplCopyWith<_$TagStateImpl> get copyWith =>
      __$$TagStateImplCopyWithImpl<_$TagStateImpl>(this, _$identity);
}

abstract class _TagState implements TagState {
  const factory _TagState(
      {required final StateStatus stateStatus,
      required final String errorMessage,
      required final String successMessage,
      required final List<TagEntity> incomeTags,
      required final List<TagEntity> expenseTags,
      required final bool retrieved,
      required final bool added}) = _$TagStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  String get errorMessage;
  @override
  String get successMessage;
  @override
  List<TagEntity> get incomeTags;
  @override
  List<TagEntity> get expenseTags;
  @override
  bool get retrieved;
  @override
  bool get added;
  @override
  @JsonKey(ignore: true)
  _$$TagStateImplCopyWith<_$TagStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
