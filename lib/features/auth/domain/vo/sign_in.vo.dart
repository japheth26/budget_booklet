import 'package:equatable/equatable.dart';
import 'package:hani/core/result/result.dart';

import '../../../../core/validator/guard.dart';
import '../../data/dto/sign_in.dto.dart';

class SignInVo extends Equatable {
  final String emailAddress;
  final String password;

  const SignInVo({
    required this.emailAddress,
    required this.password,
  });

  @override
  List<Object?> get props => [emailAddress, password];

  static Result<SignInVo> create(SignInDto dto) {
    final guardResult = Guard.combine([
      Guard.againstInvalidEmail('Email address', dto.emailAddress),
      Guard.againstInvalidPassword('Password', dto.password),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = SignInVo(
      emailAddress: dto.emailAddress!,
      password: dto.password!,
    );

    return Result.ok(data: data);
  }
}
