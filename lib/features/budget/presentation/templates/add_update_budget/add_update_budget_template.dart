import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/features/budget/presentation/organisms/add_update_budget_form_organism.dart';
import 'package:hani/features/budget/presentation/templates/add_update_budget/add_update_budget_params.dart';

import '../../../../../core/color/color_theme.dart';
import '../../../../../core/color/custom_color.dart';
import '../../../../../core/dependency_injection/injection.dart';
import '../../../../../core/sizes/app_sizes.dart';

class AddUpdateBudgetTemplate extends StatelessWidget {
  const AddUpdateBudgetTemplate({
    super.key,
    this.addUpdateBudgetParams,
  });

  final AddUpdateBudgetParams? addUpdateBudgetParams;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return GestureDetector(
      onTap: () {
        _closeKeyboard(context);
      },
      child: Scaffold(
          backgroundColor: colorTheme.white_black,
          appBar: AppBar(
            foregroundColor: Colors.transparent,
            shadowColor: Colors.black,
            surfaceTintColor: CustomColor.primaryGreen,
            backgroundColor: colorTheme.primaryGreen_blueGrey800WithOpacity3,
            centerTitle: false,
            leading: GestureDetector(
              onTap: addUpdateBudgetParams?.onBackPressed,
              child: const Icon(
                FontAwesomeIcons.chevronLeft,
                color: Colors.white,
                size: AppSizes.h_28,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: AddUpdateBudgetFormOrganism(
              existingBudget: addUpdateBudgetParams?.existingBudget ?? false,
              nameController: addUpdateBudgetParams?.nameController,
              amountController: addUpdateBudgetParams?.amountController,
              dateRangePickerController:
                  addUpdateBudgetParams?.dateRangePickerController,
              notesController: addUpdateBudgetParams?.notesController,
              amountGlobalKey: addUpdateBudgetParams?.amountGlobalKey,
              nameGlobalKey: addUpdateBudgetParams?.nameGlobalKey,
              nameValidator: addUpdateBudgetParams?.nameValidator,
              amountValidator: addUpdateBudgetParams?.amountValidator,
              onSubmit: addUpdateBudgetParams?.onSubmit,
            ),
          )),
    );
  }

  void _closeKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
