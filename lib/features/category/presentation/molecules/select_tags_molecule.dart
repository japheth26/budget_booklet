import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/features/category/presentation/atoms/select_tag_pill_button_atom.dart';
import 'package:hani/features/category/presentation/atoms/form_tag_label_atom.dart';
import 'package:hani/features/category/presentation/atoms/tag_pill_atom.dart';

import '../templates/category/category_param.dart';

class SelectTagsMolecule extends StatelessWidget {
  const SelectTagsMolecule({super.key, this.selectedTags, this.onAddTag});

  final List<CategoryTagParam>? selectedTags;
  final void Function()? onAddTag;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const FormTagLabelAtom(label: 'Selected Tags'),
              SelectTagButtonAtom(
                label: 'Tap To Select Tags',
                onTap: onAddTag,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Visibility(
            visible: (selectedTags ?? []).isEmpty,
            child: Text(
              'No Tags Selected',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Visibility(
            visible: (selectedTags ?? []).isNotEmpty,
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 10,
              runSpacing: 10,
              children: [
                ...(selectedTags ?? []).map(
                  (tag) => TagPillAtom(
                    label: tag.label,
                    color: tag.color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
