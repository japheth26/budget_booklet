import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/dependency_injection/injection.dart';

import '../molecules/budget_linear_indicator_molecule.dart';

class BudgetItemOrganism extends StatelessWidget {
  const BudgetItemOrganism({
    super.key,
    this.label = '',
    this.budget = 0,
    this.expenses = 0,
    this.from,
    this.to,
  });

  final String label;
  final double budget;
  final double expenses;
  final DateTime? from;
  final DateTime? to;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Container(
      decoration: BoxDecoration(
        color: colorTheme.white_blueGrey800WithOpacity3,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 0), // Shadow towards the top
            blurRadius: 10, // Shadow blur
          ),
        ],
      ),
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: BudgetLinearIndicatorMolecule(
          label: label,
          budget: budget,
          expenses: expenses,
          from: from,
          to: to,
        ),
      ),
    );
  }
}
