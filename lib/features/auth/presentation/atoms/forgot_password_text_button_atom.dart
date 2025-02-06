import 'package:flutter/material.dart';

class ForgotPasswordTextButtonAtom extends StatelessWidget {
  const ForgotPasswordTextButtonAtom({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onPressed, child: const Text('forgot password?'));
  }
}
