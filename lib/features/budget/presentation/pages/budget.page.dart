import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/custom_color.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/features/budget/presentation/templates/budget/budget_params.dart';
import 'package:hani/features/budget/presentation/templates/budget/budget_template.dart';

import '../molecules/budget_linear_indicator_molecule.dart';

@RoutePage()
class BudgetPage extends StatefulWidget {
  const BudgetPage({super.key});

  @override
  State<BudgetPage> createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
  late StackRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AutoRouter.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return BudgetTemplate(
      budgetParams: BudgetParams(
        budgetList: [
          BudgetLinearIndicatorParam(
            label: 'Allowance',
            budget: 5000,
            expenses: 1000,
            from: DateTime.now().subtract(const Duration(days: 20)),
            to: DateTime.now(),
          ),
          BudgetLinearIndicatorParam(
            label: 'Food',
            budget: 5000,
            expenses: 2500,
            from: DateTime.now().subtract(const Duration(days: 20)),
            to: DateTime.now(),
          ),
          BudgetLinearIndicatorParam(
            label: 'Water',
            budget: 400,
            expenses: 350,
            from: DateTime.now().subtract(const Duration(days: 20)),
            to: DateTime.now(),
          ),
          BudgetLinearIndicatorParam(
            label: 'Electricity',
            budget: 4500,
            expenses: 3451.48,
            from: DateTime.now().subtract(const Duration(days: 20)),
            to: DateTime.now(),
          ),
          BudgetLinearIndicatorParam(
            label: 'Monthly Dues',
            budget: 370,
            expenses: 370,
            from: DateTime.now().subtract(const Duration(days: 20)),
            to: DateTime.now(),
          )
        ],
        addOnPressed: () {
          _router.push(AddUpdateBudgetRoute());
        },
      ),
    );
  }
}
