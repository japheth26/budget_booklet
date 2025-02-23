import 'package:flutter/material.dart';

class AddUpdateBudgetParams {
  final bool existingBudget;
  final Function()? onBackPressed;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final double? unbudgetedAmount;
  final TextEditingController? nameController;
  final TextEditingController? amountController;
  final TextEditingController? dateRangePickerController;
  final TextEditingController? notesController;
  final GlobalKey<FormFieldState>? nameGlobalKey;
  final GlobalKey<FormFieldState>? amountGlobalKey;
  final String? Function(String?)? nameValidator;
  final String? Function(String?)? amountValidator;
  final void Function(DateTimeRange?)? onDateTimeRangeSelected;
  final Function()? onSubmit;

  AddUpdateBudgetParams({
    this.existingBudget = false,
    this.onBackPressed,
    this.firstDate,
    this.lastDate,
    this.unbudgetedAmount,
    this.nameController,
    this.amountController,
    this.dateRangePickerController,
    this.notesController,
    this.nameGlobalKey,
    this.amountGlobalKey,
    this.nameValidator,
    this.amountValidator,
    this.onDateTimeRangeSelected,
    this.onSubmit,
  });
}
