import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/widgets/icons/custom_icons.dart';
import 'package:hani/features/budget/presentation/molecules/budget_linear_indicator_molecule.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../budget/presentation/templates/budget/budget_params.dart';

class DashboardBudgetCardOrganism extends StatelessWidget {
  const DashboardBudgetCardOrganism({
    super.key,
    this.label = '',
    this.budgetList,
    this.isLoading = false,
  });

  final String label;
  final List<BudgetLinearIndicatorParam>? budgetList;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Skeletonizer(
      enabled: isLoading,
      child: Container(
        decoration: BoxDecoration(
          color: colorTheme.white_blueGrey800WithOpacity3,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, -1), // Shadow towards the top
              blurRadius: 10, // Shadow blur
            ),
          ],
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Builder(builder: (context) {
              if ((budgetList ?? []).isEmpty) {
                return Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: CustomIcons.no_data,
                    ),
                    const SizedBox(height: 10),
                    const Text('No Data Found'),
                  ],
                );
              }

              return Column(
                children: [
                  ...(budgetList ?? []).map((e) {
                    return BudgetLinearIndicatorMolecule(
                      label: e.label,
                      budget: e.budget,
                      expenses: e.expenses,
                      from: e.from,
                      to: e.to,
                    );
                  })
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
