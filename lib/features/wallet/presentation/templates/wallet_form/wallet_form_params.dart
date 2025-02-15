import 'package:flutter/material.dart';

class WalletFormParams {
  WalletFormParams({
    this.spendAmountController,
    this.saveAmountController,
    this.goalController,
    this.planController,
    this.spendAmountGlobalKey,
    this.saveAmountGlobalKey,
    this.spendAmountValidator,
    this.saveAmountValidator,
    this.loading = false,
    this.existing = false,
    this.nameController,
    this.initialAmountController,
    this.nameGlobalKey,
    this.initialAmountGlobalKey,
    this.nameValidator,
    this.initialAmountValidator,
    this.onSubmit,
    this.onBackPressed,
  });

  final bool loading;
  final bool existing;

  final TextEditingController? nameController;
  final TextEditingController? initialAmountController;
  final TextEditingController? spendAmountController;
  final TextEditingController? saveAmountController;
  final TextEditingController? goalController;
  final TextEditingController? planController;

  final GlobalKey<FormFieldState>? nameGlobalKey;
  final GlobalKey<FormFieldState>? initialAmountGlobalKey;
  final GlobalKey<FormFieldState>? spendAmountGlobalKey;
  final GlobalKey<FormFieldState>? saveAmountGlobalKey;

  final String? Function(String?)? nameValidator;
  final String? Function(String?)? initialAmountValidator;
  final String? Function(String?)? spendAmountValidator;
  final String? Function(String?)? saveAmountValidator;

  final Function()? onSubmit;
  final void Function()? onBackPressed;
}
