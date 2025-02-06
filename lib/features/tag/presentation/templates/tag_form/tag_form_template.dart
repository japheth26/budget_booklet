import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/features/tag/presentation/organisms/tag_form_organism.dart';
import 'package:hani/features/tag/presentation/templates/tag_form/tag_form_param.dart';

import '../../../../../core/color/color_theme.dart';
import '../../../../../core/color/custom_color.dart';
import '../../../../../core/sizes/app_sizes.dart';

class TagFormTemplate extends StatelessWidget {
  const TagFormTemplate({super.key, this.params});

  final TagFormParam? params;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      appBar: AppBar(
        foregroundColor: Colors.transparent,
        shadowColor: Colors.black,
        surfaceTintColor: CustomColor.primaryGreen,
        backgroundColor: colorTheme.primaryGreen_blueGrey800WithOpacity3,
        centerTitle: true,
        title: Text(
          (params?.isExisting ?? false) ? 'Update Tag' : 'Create Tag',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        leading: GestureDetector(
          onTap: !(params?.isLoading ?? false) ? params?.onBackPressed : () {},
          child: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.white,
            size: AppSizes.h_28,
          ),
        ),
        actions: [
          Visibility(
            visible: params?.isExisting ?? false,
            child: GestureDetector(
              onTap: params?.onDelete,
              child: const Icon(
                FontAwesomeIcons.trashCan,
                color: Colors.white,
                size: AppSizes.h_28,
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: TagFormOrganism(
          isLoading: params?.isLoading ?? false,
          nameController: params?.nameController,
          nameGlobalKey: params?.nameGlobalKey,
          nameValidator: params?.nameValidator,
          initialColor: params?.initialColor,
          onColorChanged: params?.onColorChanged,
          onSubmit: params?.onSubmit,
        ),
      ),
    );
  }
}
