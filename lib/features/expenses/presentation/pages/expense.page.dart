import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/features/expenses/presentation/templates/income/expense_params.dart';
import 'package:hani/features/expenses/presentation/templates/income/expense_template.dart';

@RoutePage()
class ExpensePage extends StatefulWidget {
  const ExpensePage({super.key});

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
  late StackRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AutoRouter.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return ExpenseTemplate(
      expenseParams: ExpenseParams(
          totalExpensesValue: '20,000.00',
          expenseItemParams: [
            ExpenseItemParam(
              faIconName: 'apple',
              title: 'Food',
              leftSubtitle: '40.00',
              rightSubtitle: 'Dec 15, 2024',
            ),
            ExpenseItemParam(
              faIconName: 'apple',
              title: 'Food',
              leftSubtitle: '40.00',
              rightSubtitle: 'Dec 15, 2024',
            ),
            ExpenseItemParam(
              faIconName: 'apple',
              title: 'Food',
              leftSubtitle: '40.00',
              rightSubtitle: 'Dec 15, 2024',
            )
          ],
          addOnPressed: () {
            _router.push(const AddUpdateExpenseRoute());
          }),
    );
  }
}
