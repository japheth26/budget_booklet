import 'package:equatable/equatable.dart';
import 'package:hani/core/validator/guard.dart';

import '../../../../core/result/result.dart';
import '../../data/dto/sign_up_user.dto.dart';

class SignUpUserVo extends Equatable {
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String password;

  const SignUpUserVo({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.password,
  });

  @override
  List<Object?> get props => [firstName, lastName, emailAddress, password];

  static Result<SignUpUserVo> create(SignUpUserDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('First name', dto.firstName),
      Guard.againstEmptyString('Last name', dto.lastName),
      Guard.againstInvalidEmail('Email address', dto.emailAddress),
      Guard.againstInvalidPassword('Password', dto.password),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = SignUpUserVo(
      firstName: dto.firstName!,
      lastName: dto.lastName!,
      emailAddress: dto.emailAddress!,
      password: dto.password!,
    );

    return Result.ok(data: data);
  }
}
