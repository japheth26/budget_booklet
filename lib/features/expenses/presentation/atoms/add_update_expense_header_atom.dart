import 'package:flutter/material.dart';

import '../../../../core/color/color_theme.dart';
import '../../../../core/sizes/app_sizes.dart';
import '../../../../core/widgets/icons/custom_icons.dart';

class AddUpdateExpenseHeaderAtom extends StatelessWidget {
  const AddUpdateExpenseHeaderAtom({super.key, this.existing = false});

  final bool existing;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Container(
      color: colorTheme.primaryGreen_blueGrey800WithOpacity3,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: CustomIcons.shopping,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              '${existing ? "Update" : "Add"} your spending!',
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
