import 'package:flutter/material.dart';

class TagFormParam {
  final bool isLoading;
  final bool isExisting;
  final TextEditingController? nameController;
  final GlobalKey<FormFieldState>? nameGlobalKey;
  final String? Function(String?)? nameValidator;

  final Color? initialColor;
  final void Function(Color)? onColorChanged;
  final void Function()? onSubmit;
  final void Function()? onBackPressed;
  final void Function()? onDelete;

  TagFormParam({
    this.isLoading = false,
    this.isExisting = false,
    this.nameController,
    this.nameGlobalKey,
    this.nameValidator,
    this.initialColor,
    this.onColorChanged,
    this.onSubmit,
    this.onBackPressed,
    this.onDelete,
  });
}
