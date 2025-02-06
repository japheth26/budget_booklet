import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/color/custom_color.dart';

class HomeDrawerProfileAtom extends StatelessWidget {
  const HomeDrawerProfileAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: CustomColor.primaryGreen,
      child: FaIcon(
        FontAwesomeIcons.user,
        color: Colors.white,
      ),
    );
  }
}
