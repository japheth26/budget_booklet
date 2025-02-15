import 'package:flutter/material.dart';

class FormDescriptionAtom extends StatelessWidget {
  const FormDescriptionAtom({super.key, this.description});

  final String? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 0, 10),
      child: Text(description ?? ''),
    );
  }
}
