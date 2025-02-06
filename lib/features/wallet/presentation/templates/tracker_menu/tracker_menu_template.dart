import 'package:flutter/material.dart';
import 'package:hani/features/wallet/presentation/atoms/tracker_menu_item_atom.dart';
import 'package:hani/features/wallet/presentation/templates/tracker_menu/tracker_menu_params.dart';

class TrackerMenuTemplate extends StatelessWidget {
  const TrackerMenuTemplate({super.key, this.params});

  final TrackerMenuParams? params;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ...(params?.items ?? []).map((e) {
            return TrackerMenuItemAtom(
              iconData: e.iconData,
              label: e.label,
              onTap: e.onTap,
              color: e.color,
            );
          }),
        ],
      ),
    );
  }
}
