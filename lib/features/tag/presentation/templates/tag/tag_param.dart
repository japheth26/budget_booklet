import 'package:flutter/material.dart';

class TagItemParam {
  final bool isSelecting;
  final bool isSelected;
  final String? name;
  final Color? color;
  final void Function()? onTap;
  final void Function()? onSelect;

  TagItemParam(
      {this.isSelecting = false,
      this.isSelected = false,
      this.name,
      this.color,
      this.onTap,
      this.onSelect});
}

class TagsParam {
  final String? title;
  final void Function()? addOnPressed;
  final List<TagItemParam>? tagItemParams;
  final Future<void> Function()? onRefresh;
  final void Function()? onBackPressed;

  TagsParam({
    this.title,
    this.addOnPressed,
    this.tagItemParams,
    this.onRefresh,
    this.onBackPressed,
  });
}
