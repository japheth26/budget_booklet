import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/income/presentation/templates/add_update_income/add_update_income_params.dart';
import 'package:hani/features/income/presentation/templates/add_update_income/add_update_income_template.dart';

import '../../../../core/controller/masked_text_controller.dart';

@RoutePage()
class AddUpdateIncomePage extends StatefulWidget {
  const AddUpdateIncomePage({super.key});

  @override
  State<AddUpdateIncomePage> createState() => _AddUpdateIncomePageState();
}

class _AddUpdateIncomePageState extends State<AddUpdateIncomePage> {
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _amountController = MoneyMaskedTextController();
  final TextEditingController _datePickerController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  final GlobalKey<FormFieldState> _categoryGlobalKey = GlobalKey();
  final GlobalKey<FormFieldState> _amountGlobalKey = GlobalKey();
  final GlobalKey<FormFieldState> _datePickerGlobalKey = GlobalKey();

  late StackRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AutoRouter.of(context);
  }

  @override
  void dispose() {
    super.dispose();
    _categoryController.dispose();
    _amountController.dispose();
    _datePickerController.dispose();
    _notesController.dispose();

    _categoryGlobalKey.currentState?.dispose();
    _amountGlobalKey.currentState?.dispose();
    _datePickerGlobalKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AddUpdateIncomeTemplate(
      params: AddUpdateIncomeParams(
        onBackPressed: () {
          _router.maybePop();
        },
        categoryController: _categoryController,
        amountController: _amountController,
        datePickerController: _datePickerController,
        notesController: _notesController,
        categoryGlobalKey: _categoryGlobalKey,
        amountGlobalKey: _amountGlobalKey,
        datePickerGlobakKey: _datePickerGlobalKey,
        categoryValidator: (value) {
          return Guard.againstEmptyString('Category', value);
        },
        amountValidator: (value) {
          return Guard.combine([
            Guard.againstEmptyString('Amount', value),
            Guard.againstInvalidDouble('Amount', value),
            Guard.againstZero('Amount', value)
          ]);
        },
        dateValidator: (value) {
          return Guard.againstEmptyString('Date', value);
        },
        onSubmit: () {
          final isCategoryValid = _categoryGlobalKey.currentState!.validate();
          final isAmountValid = _amountGlobalKey.currentState!.validate();
          final isDateValid = _datePickerGlobalKey.currentState!.validate();

          if (isCategoryValid && isAmountValid && isDateValid) {
            //
          }
        },
      ),
    );
  }
}
