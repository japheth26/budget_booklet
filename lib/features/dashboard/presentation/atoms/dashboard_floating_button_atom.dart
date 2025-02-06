import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/custom_color.dart';

import '../templates/dashboard/dashboard_params.dart';

class DashboardFloatingButtonAtom extends StatelessWidget {
  const DashboardFloatingButtonAtom({super.key, this.options});

  final List<DashboardFloatingButtonOption>? options;

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      icon: FontAwesomeIcons.chevronUp,
      activeIcon: FontAwesomeIcons.chevronDown,
      backgroundColor: CustomColor.primaryGreen,
      overlayOpacity: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      children: (options ?? []).map((e) {
        return SpeedDialChild(
          label: e.label,
          labelBackgroundColor: Colors.black54,
          labelStyle: const TextStyle(color: Colors.white),
          backgroundColor: Colors.transparent,
          child: Container(
            width: 45,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(30),
            ),
            child: FaIcon(
              e.iconData,
              color: Colors.white,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(30), // Large radius to make it circular
          ),
          onTap: e.onTap,
        );
      }).toList(),
    );
  }
}
