import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/custom_color.dart';
import 'package:hani/core/widgets/atoms/form_button_atom.dart';
import 'package:hani/core/widgets/atoms/icon_selector_atom.dart';

import '../../../../core/color/color_theme.dart';
import '../../../../core/sizes/app_sizes.dart';
import '../../../../core/widgets/atoms/app_bar_atom.dart';
import '../../../../core/widgets/atoms/color_picker_atom.dart';
import '../../../../core/widgets/atoms/text_field_atom.dart';

@RoutePage()
class CategoryFormPage extends StatefulWidget {
  const CategoryFormPage({super.key});

  @override
  State<CategoryFormPage> createState() => _CategoryFormPageState();
}

class _CategoryFormPageState extends State<CategoryFormPage> {
  int _codePoint = Icons.apple.codePoint;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      appBar: AppBarAtom(
        centerTitle: true,
        title: Text(
          'Add Category',
          style: const TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.white,
            size: AppSizes.h_28,
          ),
        ),
      ),
      body: Column(
        children: [
          TextFieldAtom(
            label: 'Label',
            isRequired: true,
          ),
          ColorPickerAtom(),
          IconSelectorAtom(codePoint: Icons.apple.codePoint),
          const SizedBox(height: 30),
          FormButtonAtom(label: 'Save Category'),
        ],
      ),
    );
  }
}
