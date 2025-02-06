import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';

import '../../../../core/color/custom_color.dart';
import '../../../../core/sizes/app_sizes.dart';

class TitleHeaderAtom extends StatelessWidget {
  const TitleHeaderAtom({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Budget',
          style: TextStyle(
            fontSize: AppSizes.h_20,
            color: colorTheme.black_white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(
          'Booklet',
          style: TextStyle(
            fontSize: AppSizes.h_20,
            color: CustomColor.primaryGreen,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
