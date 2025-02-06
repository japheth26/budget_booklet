import 'package:flutter/material.dart';

class TrackerMenuItemParam {
  final IconData? iconData;
  final String? label;
  final Function()? onTap;
  final Color? color;

  TrackerMenuItemParam({this.iconData, this.label, this.onTap, this.color});
}

class TrackerMenuParams {
  final List<TrackerMenuItemParam>? items;

  TrackerMenuParams({this.items});
}
