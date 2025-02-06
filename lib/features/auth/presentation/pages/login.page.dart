import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/core/router/route_path.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/auth/data/dto/sign_in.dto.dart';
import 'package:hani/features/auth/presentation/templates/login/login_params.dart';
import 'package:hani/features/auth/presentation/templates/login/login_template.dart';

import '../../../../core/state_status/state_status.dart';
import '../../domain/bloc/auth/auth_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormFieldState> _emailGlobalKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _passwordGlobalKey =
      GlobalKey<FormFieldState>();

  bool obscureText = true;

  late StackRouter _router;
  late AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();

    _router = AutoRouter.of(context);
    _authBloc = getIt<AuthBloc>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _authBloc.add(const AuthEvent.checkAuth());
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _emailGlobalKey.currentState?.dispose();
    _passwordGlobalKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: _authBloc,
      listener: _handleAuthListener,
      builder: (context, state) {
        return LoginTemplate(
          params: LoginParams(
            isLoading: state.stateStatus == StateStatus.loading,
            emailController: _emailController,
            passwordController: _passwordController,
            emailGlobalKey: _emailGlobalKey,
            passwordGlobalKey: _passwordGlobalKey,
            emailValidator: _emailValidator,
            passwordValidator: _passwordValidator,
            onSubmit: _handleLogin,
            onShowPassword: _handleShowPassword,
            forgotPassword: _handleForgotPassword,
            onSignUpWithGoogle: _handleSignUpWithGoogle,
            onSignUpWithFacebook: _handleSignUpWithFacebook,
            onCreateNewAccount: _handleCreateNewAccount,
            obscureText: obscureText,
          ),
        );
      },
    );
  }

  String? _emailValidator(String? value) {
    return Guard.againstInvalidEmail('Email', value);
  }

  String? _passwordValidator(String? value) {
    return Guard.againstInvalidPassword('Password', value);
  }

  void _clearFields() {
    _emailController.clear();
    _passwordController.clear();
  }

  void _handleAuthListener(BuildContext context, AuthState state) {
    if (state.proceedToLogin) {
      print('proceed to home');
      _router.pushNamed(RoutePath.homeRoute);
      _clearFields();
    }

    if (state.proceedLocalAuth) {
      _authBloc.add(const AuthEvent.validateLocalAuth());
    }
  }

  void _handleLogin() {
    final bool isEmailValid = _emailGlobalKey.currentState!.validate();
    final bool isPasswordValid = _passwordGlobalKey.currentState!.validate();

    if (isEmailValid && isPasswordValid) {
      _authBloc.add(
        AuthEvent.signIn(
          dto: SignInDto(
            _emailController.text,
            _passwordController.text,
          ),
        ),
      );
    }
  }

  void _handleShowPassword() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  void _handleForgotPassword() {}

  void _handleSignUpWithGoogle() {}

  void _handleSignUpWithFacebook() {}

  void _handleCreateNewAccount() {
    _router.push(const SignUpRoute());
  }
}
