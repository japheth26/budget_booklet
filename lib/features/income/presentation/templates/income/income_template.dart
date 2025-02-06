import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/widgets/atoms/floating_add_button_atom.dart';
import 'package:hani/features/income/presentation/organisms/income_list_organism.dart';
import 'package:hani/features/income/presentation/templates/income/income_params.dart';

class IncomeTemplate extends StatelessWidget {
  const IncomeTemplate({super.key, this.incomeParams});

  final IncomeParams? incomeParams;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      floatingActionButton: FloatingAddButtonAtom(
        onPressed: incomeParams?.addOnPressed,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: IncomeListOrganism(
          totalIncome: incomeParams?.totalIncomeValue,
          incomeItemParams: incomeParams?.incomeItemParams,
          onRefresh: incomeParams?.onRefresh,
        ),
      ),
    );
  }
}
