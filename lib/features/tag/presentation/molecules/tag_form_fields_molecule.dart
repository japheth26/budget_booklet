import 'package:flutter/material.dart';
import 'package:hani/core/widgets/atoms/color_picker_atom.dart';
import 'package:hani/core/widgets/atoms/text_field_atom.dart';

class TagFieldsFormMolecule extends StatelessWidget {
  const TagFieldsFormMolecule({
    super.key,
    this.isLoading = false,
    this.nameController,
    this.nameGlobalKey,
    this.nameValidator,
    this.initialColor,
    this.onColorChanged,
  });

  final bool isLoading;
  final TextEditingController? nameController;
  final GlobalKey<FormFieldState>? nameGlobalKey;
  final String? Function(String?)? nameValidator;

  final Color? initialColor;
  final void Function(Color)? onColorChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldAtom(
          enabled: !isLoading,
          label: 'Label',
          isRequired: true,
          controller: nameController,
          globalKey: nameGlobalKey,
          validator: nameValidator,
        ),
        ColorPickerAtom(
          initialColor: initialColor,
          onColorChanged: onColorChanged,
        )
      ],
    );
  }
}
