import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';

import '../../../../core/widgets/atoms/form_button_atom.dart';

class LogoutButtonAtom extends StatelessWidget {
  const LogoutButtonAtom({super.key, this.label, this.onPressed});

  final String? label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return FormButtonAtom(
      shadowColor: Colors.transparent,
      backgroundColor: colorTheme.blueGreyWithOpacity2_blueGrey800WithOpacity3,
      label: label ?? '',
      textColor: colorTheme.black_white,
      onPressed: onPressed,
    );
  }
}
