import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/features/category/presentation/organisms/category_list_organism.dart';
import 'package:hani/features/category/presentation/templates/category/category_param.dart';

import '../../../../../core/color/color_theme.dart';
import '../../../../../core/sizes/app_sizes.dart';
import '../../../../../core/widgets/atoms/app_bar_atom.dart';
import '../../../../../core/widgets/atoms/floating_add_button_atom.dart';

class CategoryTemplate extends StatelessWidget {
  const CategoryTemplate({
    super.key,
    this.param,
  });

  final CategoryParam? param;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      appBar: AppBarAtom(
        centerTitle: true,
        title: Text(
          param?.title ?? '',
          style: const TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: param?.onBackPressed,
          child: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.white,
            size: AppSizes.h_28,
          ),
        ),
      ),
      floatingActionButton:
          FloatingAddButtonAtom(onPressed: param?.addOnPressed),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(top: 20),
        child: CategoryListOrganism(
          categoryItemParams: param?.categoryItemParams,
          onRefresh: param?.onRefresh,
        ),
      ),
    );
  }
}
