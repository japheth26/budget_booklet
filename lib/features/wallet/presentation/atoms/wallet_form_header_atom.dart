import 'package:flutter/material.dart';

import '../../../../core/color/color_theme.dart';
import '../../../../core/sizes/app_sizes.dart';
import '../../../../core/widgets/icons/custom_icons.dart';

class WalletFormHeaderAtom extends StatelessWidget {
  const WalletFormHeaderAtom({super.key, this.isExisting = false});

  final bool isExisting;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Container(
      color: colorTheme.primaryGreen_blueGrey800WithOpacity3,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: CustomIcons.create_wallet,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              '${isExisting ? "Update" : "Create"} wallet',
              style: const TextStyle(
                color: Colors.white,
                fontSize: AppSizes.h_20,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
