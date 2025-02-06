import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/widgets/atoms/floating_add_button_atom.dart';
import 'package:hani/features/expenses/presentation/organisms/expense_list_organism.dart';
import 'package:hani/features/expenses/presentation/templates/income/expense_params.dart';

class ExpenseTemplate extends StatelessWidget {
  const ExpenseTemplate({super.key, this.expenseParams});

  final ExpenseParams? expenseParams;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      floatingActionButton: FloatingAddButtonAtom(
        onPressed: expenseParams?.addOnPressed,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ExpenseListOrganism(
          totalExpensesValue: expenseParams?.totalExpensesValue,
          incomeItemParams: expenseParams?.expenseItemParams,
          onRefresh: expenseParams?.onRefresh,
        ),
      ),
    );
  }
}
