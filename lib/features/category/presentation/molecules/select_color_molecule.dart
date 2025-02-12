import 'package:flutter/material.dart';
import 'package:hani/features/category/presentation/atoms/form_tag_label_atom.dart';

import '../../../../core/widgets/atoms/color_picker_atom.dart';

class SelectColorMolecule extends StatelessWidget {
  const SelectColorMolecule(
      {super.key, this.initialColor, this.onColorChanged});

  final Color? initialColor;
  final void Function(Color)? onColorChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FormTagLabelAtom(label: 'Select Color'),
          const SizedBox(height: 10),
          ColorPickerAtom(
            initialColor: initialColor,
            onColorChanged: onColorChanged,
          ),
        ],
      ),
    );
  }
}
