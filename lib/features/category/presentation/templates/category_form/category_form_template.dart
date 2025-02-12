import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/features/category/presentation/organisms/category_form_organism.dart';
import 'package:hani/features/category/presentation/templates/category_form/category_form_param.dart';

import '../../../../../core/color/color_theme.dart';
import '../../../../../core/sizes/app_sizes.dart';
import '../../../../../core/widgets/atoms/app_bar_atom.dart';

class CategoryFormTemplate extends StatelessWidget {
  const CategoryFormTemplate({
    super.key,
    this.params,
  });

  final CategoryFormParam? params;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      appBar: AppBarAtom(
        centerTitle: true,
        title: Text(
          params?.existing ?? false ? 'Update Category' : 'Add Category',
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          if (params?.existing ?? false)
            IconButton(
              onPressed: params?.onDeleteCategory,
              icon: const Icon(
                FontAwesomeIcons.trashCan,
                color: Colors.white,
                size: AppSizes.h_24,
              ),
            ),
        ],
        leading: GestureDetector(
          onTap: params?.onBackPressed,
          child: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.white,
            size: AppSizes.h_28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: CategoryFormOrganism(
          loading: params?.loading ?? false,
          labelController: params?.labelController,
          labelFormKey: params?.labelFormKey,
          labelValidator: params?.labelValidator,
          selectedTags: params?.selectedTags,
          onAddTag: params?.onAddTag,
          initialColor: params?.initialColor,
          onColorChanged: params?.onColorChanged,
          codePoint: params?.codePoint,
          onSelectIcon: params?.onSelectIcon,
          onSaveCategory: params?.onSaveCategory,
        ),
      ),
    );
  }
}
