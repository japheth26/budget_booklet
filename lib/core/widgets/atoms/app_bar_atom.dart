import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';

import '../../color/custom_color.dart';

class AppBarAtom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarAtom(
      {super.key,
      this.foregroundColor,
      this.shadowColor,
      this.surfaceTintColor,
      this.backgroundColor,
      this.centerTitle = false,
      this.title,
      this.leading,
      this.actions});

  final Color? foregroundColor;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final Color? backgroundColor;
  final bool centerTitle;
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return AppBar(
      foregroundColor: foregroundColor,
      shadowColor: shadowColor ?? Colors.black,
      surfaceTintColor: surfaceTintColor ?? CustomColor.primaryGreen,
      backgroundColor:
          backgroundColor ?? colorTheme.primaryGreen_blueGrey800WithOpacity3,
      centerTitle: centerTitle,
      title: title,
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
