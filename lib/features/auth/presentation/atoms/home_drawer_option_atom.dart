import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDrawerOptionAtom extends StatelessWidget {
  const HomeDrawerOptionAtom({
    super.key,
    this.name,
    this.iconData,
    this.onTap,
  });

  final String? name;
  final IconData? iconData;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: iconData != null ? FaIcon(iconData) : null,
      title: Text(name ?? ''),
      trailing: const FaIcon(FontAwesomeIcons.chevronRight),
    );
  }
}
