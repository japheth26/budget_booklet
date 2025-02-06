import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/color/custom_color.dart';
import '../../../../core/widgets/atoms/form_button_atom.dart';

class LoginButtonOptionsMolecule extends StatelessWidget {
  const LoginButtonOptionsMolecule({
    super.key,
    this.isLoading = false,
    this.onSignUpWithGoogle,
    this.onSignUpWithFacebook,
    this.onCreateNewAccount,
  });
  final bool isLoading;
  final void Function()? onSignUpWithGoogle;
  final void Function()? onSignUpWithFacebook;
  final void Function()? onCreateNewAccount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormButtonAtom(
          enabled: !isLoading,
          label: 'Sign up with Google',
          backgroundColor: Colors.redAccent,
          prefixIcon: const FaIcon(
            FontAwesomeIcons.google,
            color: Colors.white,
          ),
          onPressed: onSignUpWithGoogle,
        ),
        const SizedBox(height: 20),
        FormButtonAtom(
          enabled: !isLoading,
          label: 'Sign up with Facebook',
          backgroundColor: CustomColor.royalBlue,
          prefixIcon: const FaIcon(
            FontAwesomeIcons.facebook,
            color: Colors.white,
          ),
          onPressed: onSignUpWithFacebook,
        ),
        const SizedBox(height: 20),
        FormButtonAtom(
          enabled: !isLoading,
          label: 'Create New Account',
          backgroundColor: CustomColor.primaryGreen,
          prefixIcon: const FaIcon(
            FontAwesomeIcons.envelope,
            color: Colors.white,
          ),
          onPressed: onCreateNewAccount,
        ),
      ],
    );
  }
}
