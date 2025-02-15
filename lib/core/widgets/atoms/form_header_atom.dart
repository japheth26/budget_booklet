import 'package:flutter/material.dart';

import '../../sizes/app_sizes.dart';

class FormHeaderAtom extends StatelessWidget {
  const FormHeaderAtom({super.key, this.label});

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Text(
        label ?? '',
        style: const TextStyle(
            fontWeight: FontWeight.w600, fontSize: AppSizes.h_16),
      ),
    );
  }
}
