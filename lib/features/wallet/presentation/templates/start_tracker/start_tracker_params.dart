import 'package:flutter/material.dart';

class StartTrackerInputParams {
  final String? datePickerLabel;
  final String? targetAmountLabel;
  final String? notesLabel;

  final TextEditingController? datePickerController;
  final TextEditingController? targetAmountController;
  final TextEditingController? notesController;

  final String? Function(String?)? datePickerValidator;
  final String? Function(String?)? targetAmountValidator;

  final GlobalKey<FormFieldState>? datePickerGlobalKey;
  final GlobalKey<FormFieldState>? targetAmountGlobalKey;

  final dynamic Function(DateTime?)? onStartDateSelected;

  StartTrackerInputParams({
    this.datePickerLabel,
    this.targetAmountLabel,
    this.notesLabel,
    this.datePickerController,
    this.targetAmountController,
    this.notesController,
    this.datePickerValidator,
    this.targetAmountValidator,
    this.datePickerGlobalKey,
    this.targetAmountGlobalKey,
    this.onStartDateSelected,
  });
}

class StartTrackerButtonParams {
  final String? submitLabel;
  final Function()? onPressed;

  StartTrackerButtonParams({
    this.submitLabel,
    this.onPressed,
  });
}
