// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String error, String? tag) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? ok,
    TResult? Function(String error, String? tag)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String error, String? tag)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(Fail<T> value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<T> value)? ok,
    TResult? Function(Fail<T> value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(Fail<T> value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OkImplCopyWith<T, $Res> {
  factory _$$OkImplCopyWith(
          _$OkImpl<T> value, $Res Function(_$OkImpl<T>) then) =
      __$$OkImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$OkImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$OkImpl<T>>
    implements _$$OkImplCopyWith<T, $Res> {
  __$$OkImplCopyWithImpl(_$OkImpl<T> _value, $Res Function(_$OkImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$OkImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$OkImpl<T> extends Ok<T> {
  const _$OkImpl({required this.data}) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.ok(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkImplCopyWith<T, _$OkImpl<T>> get copyWith =>
      __$$OkImplCopyWithImpl<T, _$OkImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String error, String? tag) fail,
  }) {
    return ok(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? ok,
    TResult? Function(String error, String? tag)? fail,
  }) {
    return ok?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String error, String? tag)? fail,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(Fail<T> value) fail,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<T> value)? ok,
    TResult? Function(Fail<T> value)? fail,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(Fail<T> value)? fail,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class Ok<T> extends Result<T> {
  const factory Ok({required final T data}) = _$OkImpl<T>;
  const Ok._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$OkImplCopyWith<T, _$OkImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailImplCopyWith<T, $Res> {
  factory _$$FailImplCopyWith(
          _$FailImpl<T> value, $Res Function(_$FailImpl<T>) then) =
      __$$FailImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error, String? tag});
}

/// @nodoc
class __$$FailImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$FailImpl<T>>
    implements _$$FailImplCopyWith<T, $Res> {
  __$$FailImplCopyWithImpl(
      _$FailImpl<T> _value, $Res Function(_$FailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? tag = freezed,
  }) {
    return _then(_$FailImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailImpl<T> extends Fail<T> {
  const _$FailImpl({required this.error, this.tag}) : super._();

  @override
  final String error;
  @override
  final String? tag;

  @override
  String toString() {
    return 'Result<$T>.fail(error: $error, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailImpl<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailImplCopyWith<T, _$FailImpl<T>> get copyWith =>
      __$$FailImplCopyWithImpl<T, _$FailImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String error, String? tag) fail,
  }) {
    return fail(error, tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? ok,
    TResult? Function(String error, String? tag)? fail,
  }) {
    return fail?.call(error, tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String error, String? tag)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(error, tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(Fail<T> value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<T> value)? ok,
    TResult? Function(Fail<T> value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(Fail<T> value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class Fail<T> extends Result<T> {
  const factory Fail({required final String error, final String? tag}) =
      _$FailImpl<T>;
  const Fail._() : super._();

  String get error;
  String? get tag;
  @JsonKey(ignore: true)
  _$$FailImplCopyWith<T, _$FailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
