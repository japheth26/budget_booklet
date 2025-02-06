import 'package:flutter/material.dart';
import 'package:hani/features/budget/presentation/atoms/budget_linear_date_range_atom.dart';
import 'package:hani/features/budget/presentation/atoms/budget_linear_indicator_atom.dart';
import 'package:hani/features/budget/presentation/atoms/budget_linear_indicator_detail_atom.dart';

class BudgetLinearIndicatorMolecule extends StatelessWidget {
  const BudgetLinearIndicatorMolecule({
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
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BudgetLinearIndicatorDetailAtom(
            label: label,
            budget: budget,
            expenses: expenses,
          ),
          const SizedBox(height: 5),
          BudgetLinearIndicatorAtom(
            budget: budget,
            expenses: expenses,
          ),
          const SizedBox(height: 5),
          BudgetLinearDateRangeAtom(
            from: from,
            to: to,
          ),
        ],
      ),
    );
  }
}
