import 'package:flutter/material.dart';
import 'package:hani/features/expenses/presentation/atoms/total_expenses_atom.dart';
import 'package:hani/features/expenses/presentation/molecules/expense_list_molecule.dart';

import '../../../../core/sizes/app_sizes.dart';
import '../../../../core/widgets/icons/custom_icons.dart';
import '../templates/income/expense_params.dart';

class ExpenseListOrganism extends StatelessWidget {
  const ExpenseListOrganism(
      {super.key,
      this.totalExpensesValue,
      this.incomeItemParams,
      this.onRefresh});

  final String? totalExpensesValue;
  final List<ExpenseItemParam>? incomeItemParams;
  final Future<void> Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 50,
            child: TotalExpensesAtom(
              value: totalExpensesValue,
            )),
        Expanded(
          child: RefreshIndicator(
            onRefresh: onRefresh ?? () async {},
            child: Builder(builder: (context) {
              if ((incomeItemParams ?? []).isEmpty) {
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
                        const SizedBox(height: 150),
                      ],
                    ),
                  ),
                );
              }

              return ExpenseListMolecule(
                incomeItemParams: incomeItemParams,
              );
            }),
          ),
        )
      ],
    );
  }
}
