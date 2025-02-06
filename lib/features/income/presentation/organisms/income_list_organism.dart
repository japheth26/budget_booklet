import 'package:flutter/material.dart';
import 'package:hani/features/income/presentation/atoms/total_income_atom.dart';
import 'package:hani/features/income/presentation/molecules/income_list_molecule.dart';

import '../../../../core/sizes/app_sizes.dart';
import '../../../../core/widgets/icons/custom_icons.dart';
import '../templates/income/income_params.dart';

class IncomeListOrganism extends StatelessWidget {
  const IncomeListOrganism(
      {super.key, this.totalIncome, this.incomeItemParams, this.onRefresh});

  final String? totalIncome;
  final List<IncomeItemParam>? incomeItemParams;
  final Future<void> Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 50,
            child: TotalIncomeAtom(
              value: totalIncome,
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

              return IncomeListMolecule(
                incomeItemParams: incomeItemParams,
              );
            }),
          ),
        )
      ],
    );
  }
}
