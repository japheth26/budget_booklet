import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../color/custom_color.dart';

class FloatingAddButtonAtom extends StatelessWidget {
  const FloatingAddButtonAtom({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: UniqueKey(),
      onPressed: onPressed,
      backgroundColor: CustomColor.primaryGreen,
      shape: const CircleBorder(),
      child: const FaIcon(
        FontAwesomeIcons.plus,
        color: Colors.white,
      ),
    );
  }
}
