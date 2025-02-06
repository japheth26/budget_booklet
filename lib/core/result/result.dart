import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

// Copied from: https://github.com/wasabeef/flutter-architecture-blueprints/blob/main/lib/data/model/result.dart

@freezed
abstract class Result<T> with _$Result<T> {
  const Result._();

  const factory Result.ok({required T data}) = Ok<T>;

  const factory Result.fail({required String error, String? tag}) = Fail;

  static Result<T> guard<T>(T Function() body) {
    try {
      return Result<T>.ok(data: body());
    } on Exception catch (e) {
      return Result<T>.fail(error: e.toString());
    }
  }

  static Future<Result<T>> guardFuture<T>(Future<T> Function() future) async {
    try {
      return Result<T>.ok(data: await future());
    } on Exception catch (e) {
      return Result<T>.fail(error: e.toString());
    }
  }

  bool get isSuccess =>
      when(ok: (T data) => true, fail: (dynamic e, dynamic t) => false);

  bool get isFailure => !isSuccess;

  void ifOk(Function(T data) body) {
    maybeWhen(
      ok: (T data) => body(data),
      orElse: () {
        // no-op
      },
    );
  }

  void ifFail(Function(dynamic e) body) {
    maybeWhen(
      fail: (dynamic e, dynamic t) => body(e),
      orElse: () {
        // no-op
      },
    );
  }

  T get getValue {
    return when(
      ok: (T data) => data,
      fail: (dynamic e, dynamic t) => throw e,
    );
  }

  dynamic get getError {
    return when(
        ok: (T data) => throw 'No error', fail: (dynamic e, dynamic t) => e);
  }

  dynamic get getErrorTag {
    return when(
        ok: (T data) => throw 'No error', fail: (dynamic e, dynamic t) => t);
  }
}

extension ResultObjectExt<T> on T {
  Result<T> get asOk => Result<T>.ok(data: this);

  Result<T> asFail(Exception e) => Result<T>.fail(error: e.toString());
}
