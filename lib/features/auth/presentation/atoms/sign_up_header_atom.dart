import 'package:flutter/material.dart';

import '../../../../core/widgets/icons/custom_icons.dart';

class SignUpHeaderAtom extends StatelessWidget {
  const SignUpHeaderAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: CustomIcons.sign_up,
    );
  }
}
