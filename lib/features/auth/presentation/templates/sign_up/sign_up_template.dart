import 'package:flutter/material.dart';
import 'package:hani/features/auth/presentation/atoms/sign_up_appbar_atom.dart';
import 'package:hani/features/auth/presentation/organisms/sign_up_form_organism.dart';
import 'package:hani/features/auth/presentation/templates/sign_up/sign_up_params.dart';

class SignUpTemplate extends StatelessWidget {
  const SignUpTemplate({super.key, this.params});

  final SignUpParams? params;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SignUpAppbarAtom(
        onBackPressed: params?.onBackPressed,
      ),
      body: SingleChildScrollView(
        child: SignUpFormOrganism(
          isLoading: params?.isLoading ?? false,
          emailController: params?.emailController,
          passwordController: params?.passwordController,
          emailGlobalKey: params?.emailGlobalKey,
          passwordGlobalKey: params?.passwordGlobalKey,
          emailValidator: params?.emailValidator,
          passwordValidator: params?.passwordValidator,
          onSubmit: params?.onSubmit,
          passwordObscureText: params?.passwordObscureText ?? true,
          confirmPasswordObscureText:
              params?.confirmPasswordObscureText ?? true,
          onShowPassword: params?.onShowPassword,
          onShowConfirmPassword: params?.onShowConfirmPassword,
          firstNameController: params?.firstNameController,
          lastNameController: params?.lastNameController,
          firstNameGlobalKey: params?.firstNameGlobalKey,
          lastNameGlobalKey: params?.lastNameGlobalKey,
          firstNameValidator: params?.firstNameValidator,
          lastNameValidator: params?.lastNameValidator,
          confirmPasswordController: params?.confirmPasswordController,
          confirmPasswordGlobalKey: params?.confirmPasswordGlobalKey,
          confirmPasswordValidator: params?.confirmPasswordValidator,
        ),
      ),
    );
  }
}
