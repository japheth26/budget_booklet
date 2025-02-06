import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/core/widgets/dialog/global_dialog.dart';
import 'package:hani/features/auth/data/dto/sign_up_user.dto.dart';
import 'package:hani/features/auth/presentation/templates/sign_up/sign_up_params.dart';
import 'package:hani/features/auth/presentation/templates/sign_up/sign_up_template.dart';

import '../../../../core/dependency_injection/injection.dart';
import '../../../../core/validator/guard.dart';
import '../../domain/bloc/auth/auth_bloc.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormFieldState> _firstNameGlobalKey =
      GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _lastNameGlobalKey =
      GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _emailGlobalKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _passwordGlobalKey =
      GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _confirmPasswordGlobalKey =
      GlobalKey<FormFieldState>();

  bool _passwordObscureText = true;
  bool _confirmPasswordObscureText = true;

  late StackRouter _router;
  late AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();

    _router = AutoRouter.of(context);
    _authBloc = getIt<AuthBloc>();
  }

  @override
  void dispose() {
    super.dispose();

    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

    _firstNameGlobalKey.currentState?.dispose();
    _lastNameGlobalKey.currentState?.dispose();
    _emailGlobalKey.currentState?.dispose();
    _passwordGlobalKey.currentState?.dispose();
    _confirmPasswordGlobalKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: _authBloc,
      listener: _handleAuthBlocListener,
      builder: (context, state) {
        return SignUpTemplate(
          params: SignUpParams(
            firstNameController: _firstNameController,
            lastNameController: _lastNameController,
            emailController: _emailController,
            passwordController: _passwordController,
            confirmPasswordController: _confirmPasswordController,
            firstNameGlobalKey: _firstNameGlobalKey,
            lastNameGlobalKey: _lastNameGlobalKey,
            emailGlobalKey: _emailGlobalKey,
            passwordGlobalKey: _passwordGlobalKey,
            confirmPasswordGlobalKey: _confirmPasswordGlobalKey,
            firstNameValidator: _firstNameValidator,
            lastNameValidator: _lastNameValidator,
            emailValidator: _emailValidator,
            passwordValidator: _passwordValidator,
            confirmPasswordValidator: _confirmPasswordValidator,
            passwordObscureText: _passwordObscureText,
            confirmPasswordObscureText: _confirmPasswordObscureText,
            onShowPassword: _handleShowPassword,
            onShowConfirmPassword: _handleShowConfirmPassword,
            onSubmit: _handleSignUp,
            onBackPressed: _handleBackPressed,
            isLoading: state.stateStatus == StateStatus.loading,
          ),
        );
      },
    );
  }

  void _handleAuthBlocListener(context, state) {
    if (state.stateStatus == StateStatus.error) {
      GlobalDialog.showErrorDialog(context, message: state.errorMessage);
    } else if (state.stateStatus == StateStatus.success) {
      GlobalDialog.showSuccessDialog(context, message: state.successMessage);
      _clearFields();
    }

    if (state.proceedToLogin) {
      _router.push(const HomeRoute());
    }
  }

  String? _firstNameValidator(String? value) {
    return Guard.againstEmptyString('First name', value);
  }

  String? _lastNameValidator(String? value) {
    return Guard.againstEmptyString('Last name', value);
  }

  String? _emailValidator(String? value) {
    return Guard.againstInvalidEmail('Email', value);
  }

  String? _passwordValidator(String? value) {
    return Guard.againstInvalidPassword('Password', value);
  }

  String? _confirmPasswordValidator(String? value) {
    return Guard.againstInvalidConfirmPassword(
        'Confirm password', value, _passwordController.text, 'Password');
  }

  void _handleSignUp() {
    final bool isFirstNameValid = _firstNameGlobalKey.currentState!.validate();
    final bool isLastNameValid = _lastNameGlobalKey.currentState!.validate();
    final bool isEmailValid = _emailGlobalKey.currentState!.validate();
    final bool isPasswordValid = _passwordGlobalKey.currentState!.validate();
    final bool isConfirmPasswordValid =
        _confirmPasswordGlobalKey.currentState!.validate();

    if (isFirstNameValid &&
        isLastNameValid &&
        isEmailValid &&
        isPasswordValid &&
        isConfirmPasswordValid) {
      _authBloc.add(AuthEvent.signUp(
          dto: SignUpUserDto(
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        emailAddress: _emailController.text,
        password: _passwordController.text,
      )));
    }
  }

  void _handleShowPassword() {
    setState(() {
      _passwordObscureText = !_passwordObscureText;
    });
  }

  void _handleShowConfirmPassword() {
    setState(() {
      _confirmPasswordObscureText = !_confirmPasswordObscureText;
    });
  }

  void _handleBackPressed() {
    _router.maybePop();
  }

  void _clearFields() {
    _firstNameController.clear();
    _lastNameController.clear();
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();
  }
}
