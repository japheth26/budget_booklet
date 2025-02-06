import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/widgets/atoms/app_bar_atom.dart';

import '../../../../core/sizes/app_sizes.dart';

class SignUpAppbarAtom extends StatelessWidget implements PreferredSizeWidget {
  const SignUpAppbarAtom({super.key, this.onBackPressed});

  final void Function()? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return AppBarAtom(
      centerTitle: true,
      title: const Text('Sign Up'),
      leading: GestureDetector(
        onTap: onBackPressed,
        child: const Icon(
          FontAwesomeIcons.chevronLeft,
          color: Colors.white,
          size: AppSizes.h_28,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
