import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/color/custom_color.dart';

class BudgetLinearIndicatorAtom extends StatelessWidget {
  const BudgetLinearIndicatorAtom({
    super.key,
    this.budget = 0,
    this.expenses = 0,
  });

  final double budget;
  final double expenses;

  @override
  Widget build(BuildContext context) {
    final double budgetPercent = 1 - (expenses / budget);
    return LinearProgressIndicator(
      value: budgetPercent,
      borderRadius: BorderRadius.circular(5),
      color: ColorThemeUtils.getColors(context).deepPurple_purple,
      minHeight: 10,
    );
  }
}
