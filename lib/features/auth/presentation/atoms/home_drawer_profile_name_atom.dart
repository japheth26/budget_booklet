import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';

class HomeDrawerProfileNameAtom extends StatelessWidget {
  const HomeDrawerProfileNameAtom({super.key, this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Text(
      name ?? '',
      style: TextStyle(
          color: colorTheme.black_white,
          fontSize: 15,
          fontWeight: FontWeight.w600),
    );
  }
}
