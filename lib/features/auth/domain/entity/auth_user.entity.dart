import 'package:equatable/equatable.dart';

import '../../../../core/result/result.dart';
import '../../../../core/validator/guard.dart';
import '../../data/dto/auth_user.dto.dart';

class AuthUserEntity extends Equatable {
  final String userId;
  final String firstName;
  final String lastName;
  final String email;

  const AuthUserEntity({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  @override
  List<Object?> get props => [userId, email, firstName, lastName];

  static Result<AuthUserEntity> create(AuthUserDto dto) {
    final guardResult = Guard.combine([
      Guard.againstEmptyString('User ID', dto.userId),
      Guard.againstEmptyString('First name', dto.firstName),
      Guard.againstEmptyString('Last name', dto.lastName),
      Guard.againstInvalidEmail('Email address', dto.emailAddress),
    ]);

    if (guardResult != null) {
      return Result.fail(error: guardResult);
    }

    final data = AuthUserEntity(
      userId: dto.userId!,
      firstName: dto.firstName!,
      lastName: dto.lastName!,
      email: dto.emailAddress!,
    );

    return Result.ok(data: data);
  }
}
