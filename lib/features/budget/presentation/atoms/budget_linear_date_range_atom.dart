import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:intl/intl.dart';

class BudgetLinearDateRangeAtom extends StatelessWidget {
  const BudgetLinearDateRangeAtom({
    super.key,
    this.from,
    this.to,
  });

  final DateTime? from;
  final DateTime? to;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
            visible: from != null,
            child: Text(
              from != null ? DateFormat('MMM dd').format(from!) : '',
              style: TextStyle(
                color: colorTheme.black54_white,
              ),
            )),
        Visibility(
          visible: to != null,
          child: Text(
            to != null ? DateFormat('MMM dd').format(to!) : '',
            style: TextStyle(
              color: colorTheme.black54_white,
            ),
          ),
        ),
      ],
    );
  }
}
