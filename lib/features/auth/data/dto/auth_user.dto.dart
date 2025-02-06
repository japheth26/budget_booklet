import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.dto.freezed.dart';
part 'auth_user.dto.g.dart';

@freezed
class AuthUserDto with _$AuthUserDto {
  const factory AuthUserDto(
    String? userId,
    String? firstName,
    String? lastName,
    String? emailAddress,
  ) = _AuthUserDto;

  const AuthUserDto._();

  factory AuthUserDto.fromJson(Map<String, dynamic> json) =>
      _$AuthUserDtoFromJson(json);
}
