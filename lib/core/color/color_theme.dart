// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hani/core/color/custom_color.dart';

class ColorTheme {
  ColorTheme({required this.brightness}) {
    final bool isLight = brightness == Brightness.light;
    black_white = isLight ? Colors.black : Colors.white;
    primaryGreen_white = isLight ? CustomColor.primaryGreen : Colors.white;
    white_black = isLight ? Colors.white : Colors.black;
    white_blueGrey800WithOpacity3 =
        isLight ? Colors.white : Colors.blueGrey[800]!.withOpacity(0.3);
    black54_white = isLight ? Colors.black54 : Colors.white;
    deepPurple_purple = isLight ? Colors.deepPurple : Colors.purple;
    deepPurple_white = isLight ? Colors.deepPurple : Colors.white;
    primaryGreen_blueGrey800WithOpacity3 = isLight
        ? CustomColor.primaryGreen
        : Colors.blueGrey[800]!.withOpacity(0.3);
    blueGreyWithOpacity2_blueGrey800WithOpacity3 = isLight
        ? Colors.blueGrey.withOpacity(0.2)
        : Colors.blueGrey[800]!.withOpacity(0.3);
    blueGreyWithOpacity2_transparent =
        isLight ? Colors.blueGrey.withOpacity(0.2) : Colors.transparent;
    white_blueGrey800WithOpacity2 =
        isLight ? Colors.white : Colors.blueGrey[800]!.withOpacity(0.2);
    blueAccentWithOpacity3_blueGrey800WithOpacity3 = isLight
        ? Colors.blueAccent.withOpacity(0.3)
        : Colors.blueGrey[800]!.withOpacity(0.3);
  }

  final Brightness brightness;

  late Color black_white;
  late Color primaryGreen_white;
  late Color white_black;
  late Color white_blueGrey800WithOpacity3;
  late Color black54_white;
  late Color deepPurple_purple;
  late Color deepPurple_white;
  late Color primaryGreen_blueGrey800WithOpacity3;
  late Color blueGreyWithOpacity2_blueGrey800WithOpacity3;
  late Color blueGreyWithOpacity2_transparent;
  late Color white_blueGrey800WithOpacity2;
  late Color blueAccentWithOpacity3_blueGrey800WithOpacity3;
}

class ColorThemeUtils {
  static ColorTheme getColors(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Brightness brightness = theme.brightness;

    return ColorTheme(brightness: brightness);
  }
}
