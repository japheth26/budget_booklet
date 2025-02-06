part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp({required SignUpUserDto dto}) = _SignUp;
  const factory AuthEvent.signIn({required SignInDto dto}) = _SignIn;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.checkAuth() = _CheckAuth;
  const factory AuthEvent.validateLocalAuth() = _ValidateLocalAuth;
}
