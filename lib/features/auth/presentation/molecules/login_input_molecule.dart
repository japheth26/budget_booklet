import 'package:flutter/material.dart';
import 'package:hani/features/auth/presentation/atoms/password_field_atom.dart';

import '../../../../core/widgets/atoms/text_field_atom.dart';

class LoginInputMolecule extends StatelessWidget {
  const LoginInputMolecule({
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldAtom(
          enabled: !isLoading,
          label: 'Email',
          isRequired: true,
          controller: emailController,
          globalKey: emailGlobalKey,
          validator: emailValidator,
        ),
        PasswordFieldAtom(
          enabled: !isLoading,
          label: 'Password',
          controller: passwordController,
          globalKey: passwordGlobalKey,
          validator: passwordValidator,
          obscureText: obscureText,
          onShowPassword: onShowPassword,
        )
      ],
    );
  }
}
