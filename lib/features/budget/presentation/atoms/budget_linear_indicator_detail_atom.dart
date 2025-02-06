import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/color/custom_color.dart';

class BudgetLinearIndicatorDetailAtom extends StatelessWidget {
  const BudgetLinearIndicatorDetailAtom({
    super.key,
    this.label = '',
    this.budget = 0,
    this.expenses = 0,
  });

  final double budget;
  final double expenses;
  final String label;

  @override
  Widget build(BuildContext context) {
    final double expensePercent = (expenses / budget) * 100;
    final double budgetPercent = 100 - ((expenses / budget) * 100);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Text(budget.toStringAsFixed(2)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${(budget - expenses).toStringAsFixed(2)} (${budgetPercent.toStringAsFixed(0)}%)',
              style: TextStyle(
                color: ColorThemeUtils.getColors(context).deepPurple_white,
              ),
            ),
            Text(
              '${expenses.toStringAsFixed(2)} (${expensePercent.toStringAsFixed(0)}%)',
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
