import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hani/features/tag/presentation/molecules/tag_form_fields_molecule.dart';

import '../../../../core/widgets/atoms/form_button_atom.dart';

class TagFormOrganism extends StatelessWidget {
  const TagFormOrganism({
    super.key,
    this.isLoading = false,
    this.nameController,
    this.nameGlobalKey,
    this.nameValidator,
    this.initialColor,
    this.onColorChanged,
    this.onSubmit,
  });

  final bool isLoading;
  final TextEditingController? nameController;
  final GlobalKey<FormFieldState>? nameGlobalKey;
  final String? Function(String?)? nameValidator;

  final Color? initialColor;
  final void Function(Color)? onColorChanged;
  final Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height - kToolbarHeight - 120,
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          TagFieldsFormMolecule(
            isLoading: isLoading,
            nameController: nameController,
            nameGlobalKey: nameGlobalKey,
            nameValidator: nameValidator,
            initialColor: initialColor,
            onColorChanged: onColorChanged,
          ),
          const Expanded(child: SizedBox()),
          FormButtonAtom(
              isLoading: isLoading, label: 'Save Tag', onPressed: onSubmit),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
