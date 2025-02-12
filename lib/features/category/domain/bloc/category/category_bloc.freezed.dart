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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
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
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) {
    return getAllCategories(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) {
    return getAllCategories?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
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
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) {
    return getAllCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) {
    return getAllCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
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

  GetAllCategoriesDto get dto;
  @JsonKey(ignore: true)
  _$$GetAllCategoriesImplCopyWith<_$GetAllCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllCategoryTagsByCategoryIdImplCopyWith<$Res> {
  factory _$$GetAllCategoryTagsByCategoryIdImplCopyWith(
          _$GetAllCategoryTagsByCategoryIdImpl value,
          $Res Function(_$GetAllCategoryTagsByCategoryIdImpl) then) =
      __$$GetAllCategoryTagsByCategoryIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCategoryTagsByCategoryIdImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res,
        _$GetAllCategoryTagsByCategoryIdImpl>
    implements _$$GetAllCategoryTagsByCategoryIdImplCopyWith<$Res> {
  __$$GetAllCategoryTagsByCategoryIdImplCopyWithImpl(
      _$GetAllCategoryTagsByCategoryIdImpl _value,
      $Res Function(_$GetAllCategoryTagsByCategoryIdImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCategoryTagsByCategoryIdImpl
    implements _GetAllCategoryTagsByCategoryId {
  const _$GetAllCategoryTagsByCategoryIdImpl();

  @override
  String toString() {
    return 'CategoryEvent.getAllCategoryTagsByCategoryId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCategoryTagsByCategoryIdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) {
    return getAllCategoryTagsByCategoryId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) {
    return getAllCategoryTagsByCategoryId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (getAllCategoryTagsByCategoryId != null) {
      return getAllCategoryTagsByCategoryId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) {
    return getAllCategoryTagsByCategoryId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) {
    return getAllCategoryTagsByCategoryId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (getAllCategoryTagsByCategoryId != null) {
      return getAllCategoryTagsByCategoryId(this);
    }
    return orElse();
  }
}

abstract class _GetAllCategoryTagsByCategoryId implements CategoryEvent {
  const factory _GetAllCategoryTagsByCategoryId() =
      _$GetAllCategoryTagsByCategoryIdImpl;
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
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) {
    return createCategory(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) {
    return createCategory?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
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
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) {
    return createCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) {
    return createCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
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

  CreateCategoryDto get dto;
  @JsonKey(ignore: true)
  _$$CreateCategoryImplCopyWith<_$CreateCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCategoryTagsImplCopyWith<$Res> {
  factory _$$CreateCategoryTagsImplCopyWith(_$CreateCategoryTagsImpl value,
          $Res Function(_$CreateCategoryTagsImpl) then) =
      __$$CreateCategoryTagsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateCategoryTagsDto dto});
}

/// @nodoc
class __$$CreateCategoryTagsImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CreateCategoryTagsImpl>
    implements _$$CreateCategoryTagsImplCopyWith<$Res> {
  __$$CreateCategoryTagsImplCopyWithImpl(_$CreateCategoryTagsImpl _value,
      $Res Function(_$CreateCategoryTagsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$CreateCategoryTagsImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateCategoryTagsDto,
    ));
  }
}

/// @nodoc

class _$CreateCategoryTagsImpl implements _CreateCategoryTags {
  const _$CreateCategoryTagsImpl({required this.dto});

  @override
  final CreateCategoryTagsDto dto;

  @override
  String toString() {
    return 'CategoryEvent.createCategoryTags(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCategoryTagsImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCategoryTagsImplCopyWith<_$CreateCategoryTagsImpl> get copyWith =>
      __$$CreateCategoryTagsImplCopyWithImpl<_$CreateCategoryTagsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) {
    return createCategoryTags(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) {
    return createCategoryTags?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (createCategoryTags != null) {
      return createCategoryTags(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) {
    return createCategoryTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) {
    return createCategoryTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (createCategoryTags != null) {
      return createCategoryTags(this);
    }
    return orElse();
  }
}

abstract class _CreateCategoryTags implements CategoryEvent {
  const factory _CreateCategoryTags(
      {required final CreateCategoryTagsDto dto}) = _$CreateCategoryTagsImpl;

  CreateCategoryTagsDto get dto;
  @JsonKey(ignore: true)
  _$$CreateCategoryTagsImplCopyWith<_$CreateCategoryTagsImpl> get copyWith =>
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
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) {
    return updateCategory(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) {
    return updateCategory?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
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
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) {
    return updateCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) {
    return updateCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
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

  UpdateCategoryDto get dto;
  @JsonKey(ignore: true)
  _$$UpdateCategoryImplCopyWith<_$UpdateCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCategoryTagsImplCopyWith<$Res> {
  factory _$$UpdateCategoryTagsImplCopyWith(_$UpdateCategoryTagsImpl value,
          $Res Function(_$UpdateCategoryTagsImpl) then) =
      __$$UpdateCategoryTagsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateCategoryTagsDto dto});
}

/// @nodoc
class __$$UpdateCategoryTagsImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$UpdateCategoryTagsImpl>
    implements _$$UpdateCategoryTagsImplCopyWith<$Res> {
  __$$UpdateCategoryTagsImplCopyWithImpl(_$UpdateCategoryTagsImpl _value,
      $Res Function(_$UpdateCategoryTagsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$UpdateCategoryTagsImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateCategoryTagsDto,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryTagsImpl implements _UpdateCategoryTags {
  const _$UpdateCategoryTagsImpl({required this.dto});

  @override
  final CreateCategoryTagsDto dto;

  @override
  String toString() {
    return 'CategoryEvent.updateCategoryTags(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryTagsImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryTagsImplCopyWith<_$UpdateCategoryTagsImpl> get copyWith =>
      __$$UpdateCategoryTagsImplCopyWithImpl<_$UpdateCategoryTagsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) {
    return updateCategoryTags(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) {
    return updateCategoryTags?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (updateCategoryTags != null) {
      return updateCategoryTags(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) {
    return updateCategoryTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) {
    return updateCategoryTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (updateCategoryTags != null) {
      return updateCategoryTags(this);
    }
    return orElse();
  }
}

abstract class _UpdateCategoryTags implements CategoryEvent {
  const factory _UpdateCategoryTags(
      {required final CreateCategoryTagsDto dto}) = _$UpdateCategoryTagsImpl;

  CreateCategoryTagsDto get dto;
  @JsonKey(ignore: true)
  _$$UpdateCategoryTagsImplCopyWith<_$UpdateCategoryTagsImpl> get copyWith =>
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
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) {
    return deleteCategory(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) {
    return deleteCategory?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
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
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
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

  DeleteCategoryDto get dto;
  @JsonKey(ignore: true)
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCategoryTagsImplCopyWith<$Res> {
  factory _$$DeleteCategoryTagsImplCopyWith(_$DeleteCategoryTagsImpl value,
          $Res Function(_$DeleteCategoryTagsImpl) then) =
      __$$DeleteCategoryTagsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$DeleteCategoryTagsImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$DeleteCategoryTagsImpl>
    implements _$$DeleteCategoryTagsImplCopyWith<$Res> {
  __$$DeleteCategoryTagsImplCopyWithImpl(_$DeleteCategoryTagsImpl _value,
      $Res Function(_$DeleteCategoryTagsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$DeleteCategoryTagsImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryTagsImpl implements _DeleteCategoryTags {
  const _$DeleteCategoryTagsImpl({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString() {
    return 'CategoryEvent.deleteCategoryTags(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryTagsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryTagsImplCopyWith<_$DeleteCategoryTagsImpl> get copyWith =>
      __$$DeleteCategoryTagsImplCopyWithImpl<_$DeleteCategoryTagsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) {
    return deleteCategoryTags(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) {
    return deleteCategoryTags?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (deleteCategoryTags != null) {
      return deleteCategoryTags(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) {
    return deleteCategoryTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) {
    return deleteCategoryTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (deleteCategoryTags != null) {
      return deleteCategoryTags(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategoryTags implements CategoryEvent {
  const factory _DeleteCategoryTags({required final String categoryId}) =
      _$DeleteCategoryTagsImpl;

  String get categoryId;
  @JsonKey(ignore: true)
  _$$DeleteCategoryTagsImplCopyWith<_$DeleteCategoryTagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveSelectedTagIdsImplCopyWith<$Res> {
  factory _$$SaveSelectedTagIdsImplCopyWith(_$SaveSelectedTagIdsImpl value,
          $Res Function(_$SaveSelectedTagIdsImpl) then) =
      __$$SaveSelectedTagIdsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> tagIds});
}

/// @nodoc
class __$$SaveSelectedTagIdsImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SaveSelectedTagIdsImpl>
    implements _$$SaveSelectedTagIdsImplCopyWith<$Res> {
  __$$SaveSelectedTagIdsImplCopyWithImpl(_$SaveSelectedTagIdsImpl _value,
      $Res Function(_$SaveSelectedTagIdsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagIds = null,
  }) {
    return _then(_$SaveSelectedTagIdsImpl(
      tagIds: null == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SaveSelectedTagIdsImpl implements _SaveSelectedTagIds {
  const _$SaveSelectedTagIdsImpl({required final List<String> tagIds})
      : _tagIds = tagIds;

  final List<String> _tagIds;
  @override
  List<String> get tagIds {
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagIds);
  }

  @override
  String toString() {
    return 'CategoryEvent.saveSelectedTagIds(tagIds: $tagIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveSelectedTagIdsImpl &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveSelectedTagIdsImplCopyWith<_$SaveSelectedTagIdsImpl> get copyWith =>
      __$$SaveSelectedTagIdsImplCopyWithImpl<_$SaveSelectedTagIdsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) {
    return saveSelectedTagIds(tagIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) {
    return saveSelectedTagIds?.call(tagIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (saveSelectedTagIds != null) {
      return saveSelectedTagIds(tagIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) {
    return saveSelectedTagIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) {
    return saveSelectedTagIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (saveSelectedTagIds != null) {
      return saveSelectedTagIds(this);
    }
    return orElse();
  }
}

abstract class _SaveSelectedTagIds implements CategoryEvent {
  const factory _SaveSelectedTagIds({required final List<String> tagIds}) =
      _$SaveSelectedTagIdsImpl;

  List<String> get tagIds;
  @JsonKey(ignore: true)
  _$$SaveSelectedTagIdsImplCopyWith<_$SaveSelectedTagIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSelectedTagIdsImplCopyWith<$Res> {
  factory _$$ClearSelectedTagIdsImplCopyWith(_$ClearSelectedTagIdsImpl value,
          $Res Function(_$ClearSelectedTagIdsImpl) then) =
      __$$ClearSelectedTagIdsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSelectedTagIdsImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ClearSelectedTagIdsImpl>
    implements _$$ClearSelectedTagIdsImplCopyWith<$Res> {
  __$$ClearSelectedTagIdsImplCopyWithImpl(_$ClearSelectedTagIdsImpl _value,
      $Res Function(_$ClearSelectedTagIdsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSelectedTagIdsImpl implements _ClearSelectedTagIds {
  const _$ClearSelectedTagIdsImpl();

  @override
  String toString() {
    return 'CategoryEvent.clearSelectedTagIds()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSelectedTagIdsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllCategoriesDto dto) getAllCategories,
    required TResult Function() getAllCategoryTagsByCategoryId,
    required TResult Function(CreateCategoryDto dto) createCategory,
    required TResult Function(CreateCategoryTagsDto dto) createCategoryTags,
    required TResult Function(UpdateCategoryDto dto) updateCategory,
    required TResult Function(CreateCategoryTagsDto dto) updateCategoryTags,
    required TResult Function(DeleteCategoryDto dto) deleteCategory,
    required TResult Function(String categoryId) deleteCategoryTags,
    required TResult Function(List<String> tagIds) saveSelectedTagIds,
    required TResult Function() clearSelectedTagIds,
  }) {
    return clearSelectedTagIds();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult? Function()? getAllCategoryTagsByCategoryId,
    TResult? Function(CreateCategoryDto dto)? createCategory,
    TResult? Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult? Function(UpdateCategoryDto dto)? updateCategory,
    TResult? Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult? Function(DeleteCategoryDto dto)? deleteCategory,
    TResult? Function(String categoryId)? deleteCategoryTags,
    TResult? Function(List<String> tagIds)? saveSelectedTagIds,
    TResult? Function()? clearSelectedTagIds,
  }) {
    return clearSelectedTagIds?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllCategoriesDto dto)? getAllCategories,
    TResult Function()? getAllCategoryTagsByCategoryId,
    TResult Function(CreateCategoryDto dto)? createCategory,
    TResult Function(CreateCategoryTagsDto dto)? createCategoryTags,
    TResult Function(UpdateCategoryDto dto)? updateCategory,
    TResult Function(CreateCategoryTagsDto dto)? updateCategoryTags,
    TResult Function(DeleteCategoryDto dto)? deleteCategory,
    TResult Function(String categoryId)? deleteCategoryTags,
    TResult Function(List<String> tagIds)? saveSelectedTagIds,
    TResult Function()? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (clearSelectedTagIds != null) {
      return clearSelectedTagIds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllCategoryTagsByCategoryId value)
        getAllCategoryTagsByCategoryId,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_CreateCategoryTags value) createCategoryTags,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_UpdateCategoryTags value) updateCategoryTags,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteCategoryTags value) deleteCategoryTags,
    required TResult Function(_SaveSelectedTagIds value) saveSelectedTagIds,
    required TResult Function(_ClearSelectedTagIds value) clearSelectedTagIds,
  }) {
    return clearSelectedTagIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult? Function(_CreateCategory value)? createCategory,
    TResult? Function(_CreateCategoryTags value)? createCategoryTags,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult? Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult? Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
  }) {
    return clearSelectedTagIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllCategoryTagsByCategoryId value)?
        getAllCategoryTagsByCategoryId,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_CreateCategoryTags value)? createCategoryTags,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_UpdateCategoryTags value)? updateCategoryTags,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteCategoryTags value)? deleteCategoryTags,
    TResult Function(_SaveSelectedTagIds value)? saveSelectedTagIds,
    TResult Function(_ClearSelectedTagIds value)? clearSelectedTagIds,
    required TResult orElse(),
  }) {
    if (clearSelectedTagIds != null) {
      return clearSelectedTagIds(this);
    }
    return orElse();
  }
}

abstract class _ClearSelectedTagIds implements CategoryEvent {
  const factory _ClearSelectedTagIds() = _$ClearSelectedTagIdsImpl;
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
  List<String> get selectedTagIds => throw _privateConstructorUsedError;
  Map<String, List<CategoryTagEntity>> get tagsByCategoryId =>
      throw _privateConstructorUsedError;

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
      bool updated,
      List<String> selectedTagIds,
      Map<String, List<CategoryTagEntity>> tagsByCategoryId});
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
    Object? selectedTagIds = null,
    Object? tagsByCategoryId = null,
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
      selectedTagIds: null == selectedTagIds
          ? _value.selectedTagIds
          : selectedTagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tagsByCategoryId: null == tagsByCategoryId
          ? _value.tagsByCategoryId
          : tagsByCategoryId // ignore: cast_nullable_to_non_nullable
              as Map<String, List<CategoryTagEntity>>,
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
      bool updated,
      List<String> selectedTagIds,
      Map<String, List<CategoryTagEntity>> tagsByCategoryId});
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
    Object? selectedTagIds = null,
    Object? tagsByCategoryId = null,
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
      selectedTagIds: null == selectedTagIds
          ? _value._selectedTagIds
          : selectedTagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tagsByCategoryId: null == tagsByCategoryId
          ? _value._tagsByCategoryId
          : tagsByCategoryId // ignore: cast_nullable_to_non_nullable
              as Map<String, List<CategoryTagEntity>>,
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
      required this.updated,
      required final List<String> selectedTagIds,
      required final Map<String, List<CategoryTagEntity>> tagsByCategoryId})
      : _incomeCategories = incomeCategories,
        _expenseCategories = expenseCategories,
        _selectedTagIds = selectedTagIds,
        _tagsByCategoryId = tagsByCategoryId;

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
  final List<String> _selectedTagIds;
  @override
  List<String> get selectedTagIds {
    if (_selectedTagIds is EqualUnmodifiableListView) return _selectedTagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedTagIds);
  }

  final Map<String, List<CategoryTagEntity>> _tagsByCategoryId;
  @override
  Map<String, List<CategoryTagEntity>> get tagsByCategoryId {
    if (_tagsByCategoryId is EqualUnmodifiableMapView) return _tagsByCategoryId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tagsByCategoryId);
  }

  @override
  String toString() {
    return 'CategoryState(stateStatus: $stateStatus, errorMessage: $errorMessage, successMessage: $successMessage, incomeCategories: $incomeCategories, expenseCategories: $expenseCategories, retrieved: $retrieved, updated: $updated, selectedTagIds: $selectedTagIds, tagsByCategoryId: $tagsByCategoryId)';
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
            (identical(other.updated, updated) || other.updated == updated) &&
            const DeepCollectionEquality()
                .equals(other._selectedTagIds, _selectedTagIds) &&
            const DeepCollectionEquality()
                .equals(other._tagsByCategoryId, _tagsByCategoryId));
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
      updated,
      const DeepCollectionEquality().hash(_selectedTagIds),
      const DeepCollectionEquality().hash(_tagsByCategoryId));

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
      required final bool updated,
      required final List<String> selectedTagIds,
      required final Map<String, List<CategoryTagEntity>>
          tagsByCategoryId}) = _$CategoryStateImpl;

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
  List<String> get selectedTagIds;
  @override
  Map<String, List<CategoryTagEntity>> get tagsByCategoryId;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
