import 'package:flutter/material.dart';
import 'package:hani/core/sizes/app_sizes.dart';
import '../../../../core/widgets/atoms/form_button_atom.dart';
import '../../../../core/widgets/atoms/text_field_atom.dart';
import '../molecules/select_color_molecule.dart';
import '../molecules/select_icon_molecule.dart';
import '../molecules/select_tags_molecule.dart';
import '../templates/category/category_param.dart';

class CategoryFormOrganism extends StatelessWidget {
  const CategoryFormOrganism(
      {super.key,
      this.loading = false,
      this.labelController,
      this.labelFormKey,
      this.labelValidator,
      this.selectedTags,
      this.onAddTag,
      this.initialColor,
      this.onColorChanged,
      this.codePoint,
      this.onSelectIcon,
      this.onSaveCategory});

  final bool loading;
  final TextEditingController? labelController;
  final GlobalKey<FormFieldState<dynamic>>? labelFormKey;
  final String? Function(String?)? labelValidator;

  final List<CategoryTagParam>? selectedTags;
  final void Function()? onAddTag;

  final Color? initialColor;
  final void Function(Color)? onColorChanged;

  final int? codePoint;
  final void Function(int)? onSelectIcon;

  final Function()? onSaveCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        TextFieldAtom(
          enabled: !loading,
          label: 'Label',
          isRequired: true,
          controller: labelController,
          globalKey: labelFormKey,
          validator: labelValidator,
        ),
        const SizedBox(height: 15),
        SelectTagsMolecule(
          selectedTags: selectedTags,
          onAddTag: !loading ? onAddTag : null,
        ),
        const SizedBox(height: 15),
        const Divider(),
        const SizedBox(height: 15),
        SelectIconMolecule(
          codePoint: codePoint,
          onSelectIcon: !loading ? onSelectIcon : null,
        ),
        const SizedBox(height: 15),
        const Divider(),
        const SizedBox(height: 15),
        SelectColorMolecule(
          initialColor: initialColor,
          onColorChanged: !loading ? onColorChanged : null,
        ),
        const SizedBox(height: 30),
        FormButtonAtom(
          isLoading: loading,
          label: 'Save Category',
          onPressed: onSaveCategory,
        ),
        const SizedBox(height: AppSizes.h_36),
      ],
    );
  }
}
