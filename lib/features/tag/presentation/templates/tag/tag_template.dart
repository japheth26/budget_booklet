import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/features/tag/presentation/organisms/tag_list_organism.dart';
import 'package:hani/features/tag/presentation/templates/tag/tag_param.dart';

import '../../../../../core/color/color_theme.dart';
import '../../../../../core/color/custom_color.dart';
import '../../../../../core/sizes/app_sizes.dart';
import '../../../../../core/widgets/atoms/app_bar_atom.dart';
import '../../../../../core/widgets/atoms/floating_add_button_atom.dart';

class TagTemplate extends StatelessWidget {
  const TagTemplate({super.key, this.tagsParam});

  final TagsParam? tagsParam;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      appBar: AppBarAtom(
        centerTitle: true,
        title: Text(
          tagsParam?.title ?? '',
          style: const TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: tagsParam?.onBackPressed,
          child: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.white,
            size: AppSizes.h_28,
          ),
        ),
      ),
      floatingActionButton:
          FloatingAddButtonAtom(onPressed: tagsParam?.addOnPressed),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(top: 20),
        child: TagListOrganism(
          tagItemParams: tagsParam?.tagItemParams,
          onRefresh: tagsParam?.onRefresh,
        ),
      ),
    );
  }
}
