import 'package:flutter/material.dart';
import 'package:hani/features/expenses/presentation/atoms/expense_item_atom.dart';
import 'package:hani/features/expenses/presentation/templates/income/expense_params.dart';

class ExpenseListMolecule extends StatelessWidget {
  const ExpenseListMolecule({super.key, this.incomeItemParams});

  final List<ExpenseItemParam>? incomeItemParams;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: (incomeItemParams ?? []).map((e) {
        return ExpenseItemAtom(
          faIconName: e.faIconName,
          title: e.title,
          leftSubtitle: e.leftSubtitle,
          rightSubtitle: e.rightSubtitle,
          onTap: e.onTap,
        );
      }).toList(),
    );
  }
}
