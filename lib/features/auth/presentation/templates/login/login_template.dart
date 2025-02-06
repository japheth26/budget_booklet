import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/features/auth/presentation/organisms/login_form_organism.dart';
import 'package:hani/features/auth/presentation/templates/login/login_params.dart';

class LoginTemplate extends StatelessWidget {
  const LoginTemplate({super.key, this.params});

  final LoginParams? params;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            LoginFormOrganism(
              isLoading: params?.isLoading ?? false,
              emailController: params?.emailController,
              passwordController: params?.passwordController,
              emailGlobalKey: params?.emailGlobalKey,
              passwordGlobalKey: params?.passwordGlobalKey,
              emailValidator: params?.emailValidator,
              passwordValidator: params?.passwordValidator,
              onSubmit: params?.onSubmit,
              obscureText: params?.obscureText ?? true,
              onShowPassword: params?.onShowPassword,
              forgotPassword: params?.forgotPassword,
              onSignUpWithGoogle: params?.onSignUpWithGoogle,
              onSignUpWithFacebook: params?.onSignUpWithFacebook,
              onCreateNewAccount: params?.onCreateNewAccount,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
