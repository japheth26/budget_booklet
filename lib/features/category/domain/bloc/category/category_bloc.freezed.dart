// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEvent {
  Object get dto => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllCategoriesImplCopyWith<$Res> {
  factory _$$GetAllCategoriesImplCopyWith(_$GetAllCategoriesImpl value,
          $Res Function(_$GetAllCategoriesImpl) then) =
      __$$GetAllCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllCategoriesDto dto});
}

/// @nodoc
class __$$GetAllCategoriesImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$GetAllCategoriesImpl>
    implements _$$GetAllCategoriesImplCopyWith<$Res> {
  __$$GetAllCategoriesImplCopyWithImpl(_$GetAllCategoriesImpl _value,
      $Res Function(_$GetAllCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$GetAllCategoriesImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as GetAllCategoriesDto,
    ));
  }
}

/// @nodoc

class _$GetAllCategoriesImpl implements _GetAllCategories {
  const _$GetAllCategoriesImpl({required this.dto});

  @override
  final GetAllCategoriesDto dto;

  @override
  String toString() {
    return 'CategoryEvent.getAllCategories(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCategoriesImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCategoriesImplCopyWith<_$GetAllCategoriesImpl> get copyWith =>
      __$$GetAllCategoriesImplCopyWithImpl<_$GetAllCategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
  }) {
    return getAllCategories(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
  }) {
    return getAllCategories?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    required TResult orElse(),
  }) {
    if (getAllCategories != null) {
      return getAllCategories(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return getAllCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return getAllCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (getAllCategories != null) {
      return getAllCategories(this);
    }
    return orElse();
  }
}

abstract class _GetAllCategories implements CategoryEvent {
  const factory _GetAllCategories({required final GetAllCategoriesDto dto}) =
      _$GetAllCategoriesImpl;

  @override
  GetAllCategoriesDto get dto;
  @JsonKey(ignore: true)
  _$$GetAllCategoriesImplCopyWith<_$GetAllCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCategoryImplCopyWith<$Res> {
  factory _$$CreateCategoryImplCopyWith(_$CreateCategoryImpl value,
          $Res Function(_$CreateCategoryImpl) then) =
      __$$CreateCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateCategoryDto dto});
}

/// @nodoc
class __$$CreateCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CreateCategoryImpl>
    implements _$$CreateCategoryImplCopyWith<$Res> {
  __$$CreateCategoryImplCopyWithImpl(
      _$CreateCategoryImpl _value, $Res Function(_$CreateCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$CreateCategoryImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateCategoryDto,
    ));
  }
}

/// @nodoc

class _$CreateCategoryImpl implements _CreateCategory {
  const _$CreateCategoryImpl({required this.dto});

  @override
  final CreateCategoryDto dto;

  @override
  String toString() {
    return 'CategoryEvent.createCategory(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCategoryImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCategoryImplCopyWith<_$CreateCategoryImpl> get copyWith =>
      __$$CreateCategoryImplCopyWithImpl<_$CreateCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
  }) {
    return createCategory(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
  }) {
    return createCategory?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    required TResult orElse(),
  }) {
    if (createCategory != null) {
      return createCategory(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return createCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return createCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (createCategory != null) {
      return createCategory(this);
    }
    return orElse();
  }
}

abstract class _CreateCategory implements CategoryEvent {
  const factory _CreateCategory({required final CreateCategoryDto dto}) =
      _$CreateCategoryImpl;

  @override
  CreateCategoryDto get dto;
  @JsonKey(ignore: true)
  _$$CreateCategoryImplCopyWith<_$CreateCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCategoryImplCopyWith<$Res> {
  factory _$$UpdateCategoryImplCopyWith(_$UpdateCategoryImpl value,
          $Res Function(_$UpdateCategoryImpl) then) =
      __$$UpdateCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateCategoryDto dto});
}

/// @nodoc
class __$$UpdateCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$UpdateCategoryImpl>
    implements _$$UpdateCategoryImplCopyWith<$Res> {
  __$$UpdateCategoryImplCopyWithImpl(
      _$UpdateCategoryImpl _value, $Res Function(_$UpdateCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$UpdateCategoryImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as UpdateCategoryDto,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryImpl implements _UpdateCategory {
  const _$UpdateCategoryImpl({required this.dto});

  @override
  final UpdateCategoryDto dto;

  @override
  String toString() {
    return 'CategoryEvent.updateCategory(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryImplCopyWith<_$UpdateCategoryImpl> get copyWith =>
      __$$UpdateCategoryImplCopyWithImpl<_$UpdateCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
  }) {
    return updateCategory(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
  }) {
    return updateCategory?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return updateCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return updateCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(this);
    }
    return orElse();
  }
}

abstract class _UpdateCategory implements CategoryEvent {
  const factory _UpdateCategory({required final UpdateCategoryDto dto}) =
      _$UpdateCategoryImpl;

  @override
  UpdateCategoryDto get dto;
  @JsonKey(ignore: true)
  _$$UpdateCategoryImplCopyWith<_$UpdateCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCategoryImplCopyWith<$Res> {
  factory _$$DeleteCategoryImplCopyWith(_$DeleteCategoryImpl value,
          $Res Function(_$DeleteCategoryImpl) then) =
      __$$DeleteCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteCategoryDto dto});
}

/// @nodoc
class __$$DeleteCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$DeleteCategoryImpl>
    implements _$$DeleteCategoryImplCopyWith<$Res> {
  __$$DeleteCategoryImplCopyWithImpl(
      _$DeleteCategoryImpl _value, $Res Function(_$DeleteCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$DeleteCategoryImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as DeleteCategoryDto,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryImpl implements _DeleteCategory {
  const _$DeleteCategoryImpl({required this.dto});

  @override
  final DeleteCategoryDto dto;

  @override
  String toString() {
    return 'CategoryEvent.deleteCategory(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      __$$DeleteCategoryImplCopyWithImpl<_$DeleteCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
  }) {
    return deleteCategory(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
  }) {
    return deleteCategory?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategory implements CategoryEvent {
  const factory _DeleteCategory({required final DeleteCategoryDto dto}) =
      _$DeleteCategoryImpl;

  @override
  DeleteCategoryDto get dto;
  @JsonKey(ignore: true)
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  List<CategoryEntity> get incomeCategories =>
      throw _privateConstructorUsedError;
  List<CategoryEntity> get expenseCategories =>
      throw _privateConstructorUsedError;
  bool get retrieved => throw _privateConstructorUsedError;
  bool get updated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      List<CategoryEntity> incomeCategories,
      List<CategoryEntity> expenseCategories,
      bool retrieved,
      bool updated});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

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
    Object? incomeCategories = null,
    Object? expenseCategories = null,
    Object? retrieved = null,
    Object? updated = null,
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
      incomeCategories: null == incomeCategories
          ? _value.incomeCategories
          : incomeCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      expenseCategories: null == expenseCategories
          ? _value.expenseCategories
          : expenseCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      retrieved: null == retrieved
          ? _value.retrieved
          : retrieved // ignore: cast_nullable_to_non_nullable
              as bool,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryStateImplCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateImplCopyWith(
          _$CategoryStateImpl value, $Res Function(_$CategoryStateImpl) then) =
      __$$CategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String errorMessage,
      String successMessage,
      List<CategoryEntity> incomeCategories,
      List<CategoryEntity> expenseCategories,
      bool retrieved,
      bool updated});
}

/// @nodoc
class __$$CategoryStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateImpl>
    implements _$$CategoryStateImplCopyWith<$Res> {
  __$$CategoryStateImplCopyWithImpl(
      _$CategoryStateImpl _value, $Res Function(_$CategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? incomeCategories = null,
    Object? expenseCategories = null,
    Object? retrieved = null,
    Object? updated = null,
  }) {
    return _then(_$CategoryStateImpl(
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
      incomeCategories: null == incomeCategories
          ? _value._incomeCategories
          : incomeCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      expenseCategories: null == expenseCategories
          ? _value._expenseCategories
          : expenseCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      retrieved: null == retrieved
          ? _value.retrieved
          : retrieved // ignore: cast_nullable_to_non_nullable
              as bool,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl implements _CategoryState {
  const _$CategoryStateImpl(
      {required this.stateStatus,
      required this.errorMessage,
      required this.successMessage,
      required final List<CategoryEntity> incomeCategories,
      required final List<CategoryEntity> expenseCategories,
      required this.retrieved,
      required this.updated})
      : _incomeCategories = incomeCategories,
        _expenseCategories = expenseCategories;

  @override
  final StateStatus stateStatus;
  @override
  final String errorMessage;
  @override
  final String successMessage;
  final List<CategoryEntity> _incomeCategories;
  @override
  List<CategoryEntity> get incomeCategories {
    if (_incomeCategories is EqualUnmodifiableListView)
      return _incomeCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeCategories);
  }

  final List<CategoryEntity> _expenseCategories;
  @override
  List<CategoryEntity> get expenseCategories {
    if (_expenseCategories is EqualUnmodifiableListView)
      return _expenseCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseCategories);
  }

  @override
  final bool retrieved;
  @override
  final bool updated;

  @override
  String toString() {
    return 'CategoryState(stateStatus: $stateStatus, errorMessage: $errorMessage, successMessage: $successMessage, incomeCategories: $incomeCategories, expenseCategories: $expenseCategories, retrieved: $retrieved, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            const DeepCollectionEquality()
                .equals(other._incomeCategories, _incomeCategories) &&
            const DeepCollectionEquality()
                .equals(other._expenseCategories, _expenseCategories) &&
            (identical(other.retrieved, retrieved) ||
                other.retrieved == retrieved) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      errorMessage,
      successMessage,
      const DeepCollectionEquality().hash(_incomeCategories),
      const DeepCollectionEquality().hash(_expenseCategories),
      retrieved,
      updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      __$$CategoryStateImplCopyWithImpl<_$CategoryStateImpl>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required final StateStatus stateStatus,
      required final String errorMessage,
      required final String successMessage,
      required final List<CategoryEntity> incomeCategories,
      required final List<CategoryEntity> expenseCategories,
      required final bool retrieved,
      required final bool updated}) = _$CategoryStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  String get errorMessage;
  @override
  String get successMessage;
  @override
  List<CategoryEntity> get incomeCategories;
  @override
  List<CategoryEntity> get expenseCategories;
  @override
  bool get retrieved;
  @override
  bool get updated;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
