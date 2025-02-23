import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/widgets/atoms/app_bar_atom.dart';
import 'package:hani/features/budget/presentation/organisms/add_update_budget_form_organism.dart';
import 'package:hani/features/budget/presentation/templates/add_update_budget/add_update_budget_params.dart';

import '../../../../../core/color/color_theme.dart';
import '../../../../../core/color/custom_color.dart';
import '../../../../../core/sizes/app_sizes.dart';

class AddUpdateBudgetTemplate extends StatelessWidget {
  const AddUpdateBudgetTemplate({
    super.key,
    this.params,
  });

  final AddUpdateBudgetParams? params;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return GestureDetector(
      onTap: () {
        _closeKeyboard(context);
      },
      child: Scaffold(
          backgroundColor: colorTheme.white_black,
          appBar: AppBarAtom(
            centerTitle: true,
            title: Text(
              params?.existingBudget ?? false
                  ? 'Update Budget'
                  : 'Create Budget',
              style: const TextStyle(color: Colors.white),
            ),
            leading: GestureDetector(
              onTap: params?.onBackPressed,
              child: const Icon(
                FontAwesomeIcons.chevronLeft,
                color: Colors.white,
                size: AppSizes.h_28,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: AddUpdateBudgetFormOrganism(
              existingBudget: params?.existingBudget ?? false,
              firstDate: params?.firstDate,
              lastDate: params?.lastDate,
              unbudgetedAmount: params?.unbudgetedAmount,
              nameController: params?.nameController,
              amountController: params?.amountController,
              dateRangePickerController: params?.dateRangePickerController,
              notesController: params?.notesController,
              amountGlobalKey: params?.amountGlobalKey,
              nameGlobalKey: params?.nameGlobalKey,
              nameValidator: params?.nameValidator,
              amountValidator: params?.amountValidator,
              onSubmit: params?.onSubmit,
              onDateTimeRangeSelected: params?.onDateTimeRangeSelected,
            ),
          )),
    );
  }

  void _closeKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
