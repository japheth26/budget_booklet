import 'package:flutter/material.dart';

class AddUpdateIncomeParams {
  final bool existing;
  final TextEditingController? categoryController;
  final TextEditingController? amountController;
  final TextEditingController? datePickerController;
  final TextEditingController? notesController;

  final GlobalKey<FormFieldState>? categoryGlobalKey;
  final GlobalKey<FormFieldState>? amountGlobalKey;
  final GlobalKey<FormFieldState>? datePickerGlobakKey;

  final String? Function(String?)? categoryValidator;
  final String? Function(String?)? amountValidator;
  final String? Function(String?)? dateValidator;
  final Function()? onSubmit;
  final Function()? onBackPressed;

  AddUpdateIncomeParams({
    this.existing = false,
    this.categoryController,
    this.amountController,
    this.datePickerController,
    this.notesController,
    this.categoryGlobalKey,
    this.amountGlobalKey,
    this.datePickerGlobakKey,
    this.categoryValidator,
    this.amountValidator,
    this.dateValidator,
    this.onSubmit,
    this.onBackPressed,
  });
}
