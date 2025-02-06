import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/dependency_injection/injection.dart';

import '../../../../core/color/custom_color.dart';
import '../../../../core/sizes/app_sizes.dart';

class TrackerHeaderAtom extends StatelessWidget {
  const TrackerHeaderAtom({
    super.key,
    this.name,
  });
  final String? name;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Row(
      children: [
        Text(
          name ?? '',
          style: TextStyle(
            fontSize: AppSizes.h_20,
            color: colorTheme.black_white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
