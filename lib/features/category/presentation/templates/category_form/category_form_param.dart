import 'package:flutter/material.dart';

import '../category/category_param.dart';

class CategoryFormParam {
  final String transactionType;
  final bool loading;
  final bool existing;
  final TextEditingController? labelController;
  final GlobalKey<FormFieldState<dynamic>>? labelFormKey;
  final String? Function(String?)? labelValidator;

  final List<CategoryTagParam>? selectedTags;
  final void Function()? onAddTag;

  final Color? initialColor;
  final void Function(Color)? onColorChanged;

  final int? codePoint;
  final void Function(int)? onSelectIcon;

  final Function()? onSaveCategory;
  final Function()? onBackPressed;
  final Function()? onDeleteCategory;

  CategoryFormParam({
    required this.transactionType,
    this.loading = false,
    this.existing = false,
    this.labelController,
    this.labelFormKey,
    this.labelValidator,
    this.selectedTags,
    this.onAddTag,
    this.initialColor,
    this.onColorChanged,
    this.codePoint,
    this.onSelectIcon,
    this.onSaveCategory,
    this.onBackPressed,
    this.onDeleteCategory,
  });
}
