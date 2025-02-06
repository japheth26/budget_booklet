import 'package:flutter/material.dart';
import 'package:hani/core/widgets/atoms/form_button_atom.dart';

import '../atoms/sign_up_header_atom.dart';
import '../molecules/sign_up_input_molecule.dart';

class SignUpFormOrganism extends StatelessWidget {
  const SignUpFormOrganism({
    super.key,
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
    this.isLoading = false,
  });

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

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        const SignUpHeaderAtom(),
        const SizedBox(height: 50),
        SignUpInputMolecule(
          isLoading: isLoading,
          firstNameController: firstNameController,
          lastNameController: lastNameController,
          emailController: emailController,
          passwordController: passwordController,
          confirmPasswordController: confirmPasswordController,
          firstNameGlobalKey: firstNameGlobalKey,
          lastNameGlobalKey: lastNameGlobalKey,
          emailGlobalKey: emailGlobalKey,
          passwordGlobalKey: passwordGlobalKey,
          confirmPasswordGlobalKey: confirmPasswordGlobalKey,
          firstNameValidator: firstNameValidator,
          lastNameValidator: lastNameValidator,
          emailValidator: emailValidator,
          passwordValidator: passwordValidator,
          confirmPasswordValidator: confirmPasswordValidator,
          passwordObscureText: passwordObscureText,
          confirmPasswordObscureText: confirmPasswordObscureText,
          onShowPassword: onShowPassword,
          onShowConfirmPassword: onShowConfirmPassword,
        ),
        const SizedBox(height: 30),
        FormButtonAtom(
          isLoading: isLoading,
          label: 'Submit',
          onPressed: onSubmit,
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
