import 'package:flutter/material.dart';
import 'package:hani/features/auth/presentation/atoms/password_field_atom.dart';

import '../../../../core/widgets/atoms/text_field_atom.dart';

class SignUpInputMolecule extends StatelessWidget {
  const SignUpInputMolecule({
    super.key,
    this.isLoading = false,
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
  });

  final bool isLoading;

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldAtom(
            enabled: !isLoading,
            label: 'First name',
            isRequired: true,
            controller: firstNameController,
            globalKey: firstNameGlobalKey,
            validator: firstNameValidator,
            onChanged: (value) {
              if (firstNameController != null) {
                final temp = firstNameController!.text;
                firstNameController!.text = temp[0].toUpperCase() +
                    temp.substring(1, temp.length).toLowerCase();
              }
            }),
        const SizedBox(height: 10),
        TextFieldAtom(
          enabled: !isLoading,
          label: 'Last name',
          isRequired: true,
          controller: lastNameController,
          globalKey: lastNameGlobalKey,
          validator: lastNameValidator,
          onChanged: (value) {
            if (lastNameController != null) {
              final temp = lastNameController!.text;
              lastNameController!.text = temp[0].toUpperCase() +
                  temp.substring(1, temp.length).toLowerCase();
            }
          },
        ),
        const SizedBox(height: 10),
        TextFieldAtom(
          enabled: !isLoading,
          label: 'Email address',
          isRequired: true,
          controller: emailController,
          globalKey: emailGlobalKey,
          validator: emailValidator,
        ),
        const SizedBox(height: 10),
        PasswordFieldAtom(
          enabled: !isLoading,
          label: 'Password',
          isRequired: true,
          controller: passwordController,
          globalKey: passwordGlobalKey,
          validator: passwordValidator,
          obscureText: passwordObscureText,
          onShowPassword: onShowPassword,
        ),
        const SizedBox(height: 10),
        PasswordFieldAtom(
          enabled: !isLoading,
          label: 'Confirm password',
          isRequired: true,
          controller: confirmPasswordController,
          globalKey: confirmPasswordGlobalKey,
          validator: confirmPasswordValidator,
          obscureText: confirmPasswordObscureText,
          onShowPassword: onShowConfirmPassword,
        ),
      ],
    );
  }
}
