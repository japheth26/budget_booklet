import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/features/expenses/presentation/organisms/add_update_expense_form_organism.dart';
import 'package:hani/features/expenses/presentation/templates/add_update_expense/add_update_expense_param.dart';

import '../../../../../core/color/custom_color.dart';
import '../../../../../core/sizes/app_sizes.dart';

class AddUpdateExpenseTemplate extends StatelessWidget {
  const AddUpdateExpenseTemplate({super.key, this.params});

  final AddUpdateExpenseParams? params;

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
            onTap: params?.onBackPressed,
            child: const Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.white,
              size: AppSizes.h_28,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: AddUpdateExpenseFormOrganism(
            categoryController: params?.categoryController,
            amountController: params?.amountController,
            budgetController: params?.budgetController,
            datePickerController: params?.datePickerController,
            notesController: params?.notesController,
            categoryGlobalKey: params?.categoryGlobalKey,
            amountGlobalKey: params?.amountGlobalKey,
            datePickerGlobakKey: params?.datePickerGlobakKey,
            categoryValidator: params?.categoryValidator,
            amountValidator: params?.amountValidator,
            dateValidator: params?.dateValidator,
            onSubmit: params?.onSubmit,
          ),
        ),
      ),
    );
  }

  void _closeKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
