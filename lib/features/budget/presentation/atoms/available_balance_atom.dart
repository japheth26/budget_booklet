import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';

import '../../../../core/text/text.utils.dart';

class AvailableBalanceAtom extends StatelessWidget {
  const AvailableBalanceAtom({super.key, this.amount});

  final double? amount;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Text(
      'Available Balance: ${TextUtils.applyMask(amount ?? 0)}',
      style: TextStyle(
        color: colorTheme.blueGrey_white,
      ),
    );
  }
}
