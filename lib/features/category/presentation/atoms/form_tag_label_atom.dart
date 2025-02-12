import 'package:flutter/material.dart';

class FormTagLabelAtom extends StatelessWidget {
  const FormTagLabelAtom({super.key, this.label});

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label ?? '',
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
