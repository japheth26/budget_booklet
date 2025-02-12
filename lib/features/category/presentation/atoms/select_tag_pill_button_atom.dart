import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/color/custom_color.dart';

import '../../../../core/sizes/app_sizes.dart';

class SelectTagButtonAtom extends StatelessWidget {
  const SelectTagButtonAtom({
    super.key,
    this.label,
    this.onTap,
  });

  final String? label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: CustomColor.primaryGreen,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        child: Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.handPointUp,
              color: Colors.white,
              size: AppSizes.h_12,
            ),
            const SizedBox(width: 5),
            Text(
              label ?? '',
              style: const TextStyle(
                color: Colors.white,
                fontSize: AppSizes.h_12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
