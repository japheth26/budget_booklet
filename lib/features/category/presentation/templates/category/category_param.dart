import 'package:flutter/material.dart';

class CategoryTagParam {
  final String label;
  final Color color;

  CategoryTagParam({required this.label, required this.color});
}

class CategoryItemParam {
  final String label;
  final Color color;
  final IconData iconData;
  final List<CategoryTagParam> categoryTags;
  final void Function() onTap;

  CategoryItemParam(
      {required this.label,
      required this.color,
      required this.iconData,
      required this.categoryTags,
      required this.onTap});
}

class CategoryParam {
  final String? title;
  final void Function()? addOnPressed;
  final List<CategoryItemParam>? categoryItemParams;
  final Future<void> Function()? onRefresh;
  final void Function()? onBackPressed;

  CategoryParam(
      {this.title,
      this.addOnPressed,
      this.categoryItemParams,
      this.onRefresh,
      this.onBackPressed});
}
