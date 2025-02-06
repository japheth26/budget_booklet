import 'package:flutter/material.dart';

class WalletFormParams {
  WalletFormParams({
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

  final GlobalKey<FormFieldState>? nameGlobalKey;
  final GlobalKey<FormFieldState>? initialAmountGlobalKey;

  final String? Function(String?)? nameValidator;
  final String? Function(String?)? initialAmountValidator;

  final Function()? onSubmit;
  final void Function()? onBackPressed;
}
