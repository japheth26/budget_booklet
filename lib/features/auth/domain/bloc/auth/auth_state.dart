part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required StateStatus stateStatus,
    required String errorMessage,
    required String successMessage,
    AuthUserEntity? authUserEntity,
    required bool proceedToLogin,
    required bool proceedToLogout,
    required bool proceedLocalAuth,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        stateStatus: StateStatus.initial,
        errorMessage: '',
        successMessage: '',
        proceedToLogin: false,
        proceedToLogout: false,
        proceedLocalAuth: false,
      );

  factory AuthState.loading(AuthState state) =>
      state.copyWith(stateStatus: StateStatus.loading);

  factory AuthState.error(AuthState state, String errorMessage) =>
      state.copyWith(
        stateStatus: StateStatus.error,
        errorMessage: errorMessage,
      );

  factory AuthState.success(AuthState state, String successMessage) =>
      state.copyWith(
        stateStatus: StateStatus.success,
        successMessage: successMessage,
      );

  factory AuthState.loaded(AuthState state) =>
      state.copyWith(stateStatus: StateStatus.loaded);

  factory AuthState.saveEntity(
          AuthState state, AuthUserEntity authUserEntity) =>
      state.copyWith(authUserEntity: authUserEntity);

  factory AuthState.proceedToLogin(AuthState state) =>
      state.copyWith(proceedToLogin: true);

  factory AuthState.doneLogin(AuthState state) =>
      state.copyWith(proceedToLogin: false);

  factory AuthState.proceedToLogout(AuthState state) =>
      state.copyWith(proceedToLogout: true);

  factory AuthState.doneLogout(AuthState state) =>
      state.copyWith(proceedToLogout: true);

  factory AuthState.proceedLocalAuth(AuthState state) =>
      state.copyWith(proceedLocalAuth: true);

  factory AuthState.doneLocalAuth(AuthState state) =>
      state.copyWith(proceedLocalAuth: false);

  factory AuthState.signOut(AuthState state) => AuthState.initial();
}
