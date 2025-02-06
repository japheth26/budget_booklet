import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/features/auth/data/dto/sign_up_user.dto.dart';
import 'package:injectable/injectable.dart';

import '../../../data/dto/sign_in.dto.dart';
import '../../../data/repository/auth_repository.dart';
import '../../entity/auth_user.entity.dart';
import '../../vo/sign_in.vo.dart';
import '../../vo/sign_up_user.vo.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(AuthRepository authRepository) : super(AuthState.initial()) {
    on<_SignUp>((event, emit) async {
      emit(AuthState.loading(state));

      final signUpUserVoOrError = SignUpUserVo.create(event.dto);

      if (signUpUserVoOrError.isFailure) {
        emit(AuthState.error(state, signUpUserVoOrError.getError));
        emit(AuthState.loaded(state));
        return;
      }

      final vo = signUpUserVoOrError.getValue;

      final authUserEntityOrError = await authRepository.signUp(vo);

      if (authUserEntityOrError.isFailure) {
        emit(AuthState.error(state, authUserEntityOrError.getError));
        emit(AuthState.loaded(state));
        return;
      }

      emit(AuthState.saveEntity(state, authUserEntityOrError.getValue));
      emit(AuthState.proceedToLogin(state));
      emit(AuthState.doneLogin(state));
      emit(AuthState.success(state, 'Sign up successful'));
      emit(AuthState.loaded(state));
    });

    on<_SignIn>((event, emit) async {
      emit(AuthState.loading(state));

      final signInVoOrError = SignInVo.create(event.dto);

      if (signInVoOrError.isFailure) {
        emit(AuthState.error(state, signInVoOrError.getError));
        emit(AuthState.loaded(state));
        return;
      }

      final vo = signInVoOrError.getValue;

      final authUserEntityOrError = await authRepository.signIn(vo);

      if (authUserEntityOrError.isFailure) {
        emit(AuthState.error(state, authUserEntityOrError.getError));
        emit(AuthState.loaded(state));
        return;
      }

      emit(AuthState.saveEntity(state, authUserEntityOrError.getValue));
      emit(AuthState.proceedToLogin(state));
      emit(AuthState.doneLogin(state));
      emit(AuthState.success(state, 'Sign in successful'));
      emit(AuthState.loaded(state));
    });

    on<_SignOut>((event, emit) async {
      emit(AuthState.loading(state));

      final result = await authRepository.signOut();

      if (result.isFailure) {
        emit(AuthState.error(state, result.getError));
        emit(AuthState.loaded(state));
        return;
      }
      emit(AuthState.proceedToLogout(state));
      emit(AuthState.doneLogout(state));
      emit(AuthState.signOut(state));
    });

    on<_CheckAuth>((event, emit) async {
      emit(AuthState.loading(state));

      final result = await authRepository.checkAuth();

      if (result.isFailure) {
        emit(AuthState.error(state, result.getError));
        emit(AuthState.loaded(state));
        return;
      }

      emit(AuthState.saveEntity(state, result.getValue));

      emit(AuthState.proceedLocalAuth(state));

      emit(AuthState.doneLocalAuth(state));

      emit(AuthState.loaded(state));
    });

    on<_ValidateLocalAuth>((event, emit) async {
      emit(AuthState.loading(state));

      final result = await authRepository.validateLocalAuth();
      if (result.isFailure) {
        emit(AuthState.error(state, result.getError));
        emit(AuthState.loaded(state));
        return;
      }

      final value = result.getValue;

      if (value != null && value) {
        emit(AuthState.proceedToLogin(state));
        emit(AuthState.doneLogin(state));
        emit(AuthState.success(state, 'Sign in successful'));
        emit(AuthState.loaded(state));
      }
    });
  }
}
