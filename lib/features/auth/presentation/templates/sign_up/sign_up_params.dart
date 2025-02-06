import 'package:flutter/material.dart';

class SignUpParams {
  final TextEditingController? firstNameController;
  final TextEditingController? lastNameController;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final TextEditingController? confirmPasswordController;

  final GlobalKey<FormFieldState>? firstNameGlobalKey;
  final GlobalKey<FormFieldState>? lastNameGlobalKey;
  final GlobalKey<FormFieldState>? emailGlobalKey;
  final GlobalKey<FormFieldState>? passwordGlobalKey;
  final GlobalKey<FormFieldState>? confirmPasswordGlobalKey;

  final String? Function(String?)? firstNameValidator;
  final String? Function(String?)? lastNameValidator;
  final String? Function(String?)? emailValidator;
  final String? Function(String?)? passwordValidator;
  final String? Function(String?)? confirmPasswordValidator;

  final bool passwordObscureText;
  final bool confirmPasswordObscureText;
  final void Function()? onShowPassword;
  final void Function()? onShowConfirmPassword;

  final void Function()? onSubmit;
  final void Function()? onBackPressed;

  final bool isLoading;

  SignUpParams({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.passwordController,
    this.confirmPasswordController,
    this.firstNameGlobalKey,
    this.lastNameGlobalKey,
    this.emailGlobalKey,
    this.passwordGlobalKey,
    this.confirmPasswordGlobalKey,
    this.firstNameValidator,
    this.lastNameValidator,
    this.emailValidator,
    this.passwordValidator,
    this.confirmPasswordValidator,
    this.passwordObscureText = true,
    this.confirmPasswordObscureText = true,
    this.onShowPassword,
    this.onShowConfirmPassword,
    this.onSubmit,
    this.onBackPressed,
    this.isLoading = false,
  });
}
