import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';

import '../../../../core/dependency_injection/injection.dart';
import '../../../../core/sizes/app_sizes.dart';

class TotalExpensesAtom extends StatelessWidget {
  const TotalExpensesAtom({super.key, this.value});

  final String? value;

  @override
  Widget build(BuildContext context) {
    final colortheme = ColorThemeUtils.getColors(context);
    return Container(
      alignment: Alignment.center,
      child: Text(
        value ?? '0.00',
        style: TextStyle(
          color: colortheme.black_white,
          fontSize: AppSizes.h_20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
