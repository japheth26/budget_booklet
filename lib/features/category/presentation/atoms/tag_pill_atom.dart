import 'package:flutter/material.dart';

import '../../../../core/sizes/app_sizes.dart';

class TagPillAtom extends StatelessWidget {
  const TagPillAtom({
    super.key,
    this.color,
    this.label,
  });
  final Color? color;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      child: Text(
        label ?? '',
        style: TextStyle(
            color: color != null ? _getTextColor(color!) : null,
            fontSize: AppSizes.h_12),
      ),
    );
  }

  Color _getTextColor(Color color) {
    return _isLightColor(color) ? Colors.black : Colors.white;
  }

  bool _isLightColor(Color color) {
    // Normalize the RGB values to the range [0, 1]
    double r = color.red / 255.0;
    double g = color.green / 255.0;
    double b = color.blue / 255.0;

    // Apply the luminance formula
    double luminance = 0.2126 * r + 0.7152 * g + 0.0722 * b;

    // If luminance > 0.58, it's a light color, otherwise it's dark
    return luminance > 0.58;
  }
}
