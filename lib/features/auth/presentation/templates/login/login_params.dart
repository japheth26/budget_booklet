import 'package:flutter/material.dart';

class LoginParams {
  final bool isLoading;

  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  final GlobalKey<FormFieldState>? emailGlobalKey;
  final GlobalKey<FormFieldState>? passwordGlobalKey;

  final String? Function(String?)? emailValidator;
  final String? Function(String?)? passwordValidator;

  final bool obscureText;
  final void Function()? onShowPassword;

  final void Function()? onSubmit;
  final void Function()? forgotPassword;
  final void Function()? onSignUpWithGoogle;
  final void Function()? onSignUpWithFacebook;
  final void Function()? onCreateNewAccount;

  LoginParams({
    this.isLoading = false,
    this.emailController,
    this.passwordController,
    this.emailGlobalKey,
    this.passwordGlobalKey,
    this.emailValidator,
    this.passwordValidator,
    this.obscureText = true,
    this.onShowPassword,
    this.onSubmit,
    this.forgotPassword,
    this.onSignUpWithGoogle,
    this.onSignUpWithFacebook,
    this.onCreateNewAccount,
  });
}
