import 'package:flutter/material.dart';
import 'package:hani/features/auth/presentation/atoms/forgot_password_text_button_atom.dart';
import 'package:hani/features/auth/presentation/atoms/login_divider_atom.dart';
import 'package:hani/features/auth/presentation/molecules/login_button_options_molecule.dart';
import 'package:hani/features/auth/presentation/molecules/login_input_molecule.dart';

import '../../../../core/widgets/atoms/form_button_atom.dart';
import '../atoms/title_header_atom.dart';

class LoginFormOrganism extends StatelessWidget {
  const LoginFormOrganism({
    super.key,
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TitleHeaderAtom(),
        const SizedBox(height: 50),
        LoginInputMolecule(
          isLoading: isLoading,
          emailController: emailController,
          passwordController: passwordController,
          emailGlobalKey: emailGlobalKey,
          passwordGlobalKey: passwordGlobalKey,
          emailValidator: emailValidator,
          passwordValidator: passwordValidator,
          obscureText: obscureText,
          onShowPassword: onShowPassword,
        ),
        const SizedBox(height: 30),
        FormButtonAtom(
          isLoading: isLoading,
          label: 'Login',
          onPressed: onSubmit,
        ),
        const SizedBox(height: 30),
        ForgotPasswordTextButtonAtom(
          onPressed: forgotPassword,
        ),
        const SizedBox(height: 30),
        const LoginDividerAtom(),
        const SizedBox(height: 30),
        LoginButtonOptionsMolecule(
          isLoading: isLoading,
          onSignUpWithGoogle: onSignUpWithGoogle,
          onSignUpWithFacebook: onSignUpWithFacebook,
          onCreateNewAccount: onCreateNewAccount,
        ),
      ],
    );
  }
}
