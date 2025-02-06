import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrackerMenuItemAtom extends StatelessWidget {
  const TrackerMenuItemAtom({
    super.key,
    this.iconData,
    this.label,
    this.onTap,
    this.color,
  });

  final IconData? iconData;
  final String? label;
  final Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: iconData != null
          ? FaIcon(
              iconData,
              color: color,
            )
          : null,
      title: label != null ? Text(label!) : null,
      onTap: onTap,
    );
  }
}
