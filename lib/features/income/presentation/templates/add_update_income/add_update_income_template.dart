import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/features/income/presentation/organisms/add_update_income_form_organism.dart';
import 'package:hani/features/income/presentation/templates/add_update_income/add_update_income_params.dart';

import '../../../../../core/color/color_theme.dart';
import '../../../../../core/color/custom_color.dart';
import '../../../../../core/dependency_injection/injection.dart';
import '../../../../../core/sizes/app_sizes.dart';

class AddUpdateIncomeTemplate extends StatelessWidget {
  const AddUpdateIncomeTemplate({super.key, this.params});

  final AddUpdateIncomeParams? params;

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
          child: AddUpdateIncomeFormOrganism(
            categoryController: params?.categoryController,
            amountController: params?.amountController,
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
