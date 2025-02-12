import 'package:flutter/material.dart';

import '../../../../core/widgets/atoms/icon_selector_atom.dart';
import '../atoms/form_tag_label_atom.dart';

class SelectIconMolecule extends StatelessWidget {
  const SelectIconMolecule({super.key, this.codePoint, this.onSelectIcon});

  final int? codePoint;
  final void Function(int)? onSelectIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FormTagLabelAtom(label: 'Select Icon'),
          const SizedBox(height: 10),
          IconSelectorAtom(
            codePoint: codePoint ?? Icons.apple.codePoint,
            onSelect: onSelectIcon,
          ),
        ],
      ),
    );
  }
}
