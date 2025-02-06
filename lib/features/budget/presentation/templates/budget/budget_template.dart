import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/sizes/app_sizes.dart';
import 'package:hani/core/widgets/atoms/floating_add_button_atom.dart';
import 'package:hani/features/budget/presentation/organisms/budget_item_organism.dart';

import '../../../../../core/widgets/icons/custom_icons.dart';
import 'budget_params.dart';

class BudgetTemplate extends StatelessWidget {
  const BudgetTemplate({super.key, this.budgetParams});

  final BudgetParams? budgetParams;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      floatingActionButton: FloatingAddButtonAtom(
        onPressed: budgetParams?.addOnPressed,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: RefreshIndicator(
          onRefresh: budgetParams?.onRefresh ?? () async {},
          child: Builder(builder: (context) {
            if ((budgetParams?.budgetList ?? []).isEmpty) {
              return SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: AppSizes.mediaQuery(context).height -
                      kToolbarHeight -
                      200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        child: CustomIcons.no_data,
                      ),
                      const SizedBox(height: 10),
                      const Text('No Data Found'),
                    ],
                  ),
                ),
              );
            }

            return ListView(
              children: (budgetParams?.budgetList ?? []).map((e) {
                return BudgetItemOrganism(
                  label: e.label,
                  budget: e.budget,
                  expenses: e.expenses,
                  from: e.from,
                  to: e.to,
                );
              }).toList(),
            );
          }),
        ),
      ),
    );
  }
}
