import 'package:flutter/material.dart';

class TagItemParam {
  final String? name;
  final Color? color;
  final void Function()? onTap;

  TagItemParam({this.name, this.color, this.onTap});
}

class TagsParam {
  final String? title;
  final void Function()? addOnPressed;
  final List<TagItemParam>? tagItemParams;
  final Future<void> Function()? onRefresh;
  final void Function()? onBackPressed;

  TagsParam(
      {this.title,
      this.addOnPressed,
      this.tagItemParams,
      this.onRefresh,
      this.onBackPressed});
}
