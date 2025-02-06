import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';

import '../../../../core/sizes/app_sizes.dart';
import '../../../../core/widgets/icons/custom_icons.dart';

class AddUpdateBudgetHeaderAtom extends StatelessWidget {
  const AddUpdateBudgetHeaderAtom({super.key, this.existingBudget = false});

  final bool existingBudget;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Container(
      color: colorTheme.primaryGreen_blueGrey800WithOpacity3,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: CustomIcons.man_with_cards,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              '${existingBudget ? "Update" : "Create"} your budget!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: AppSizes.h_20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
