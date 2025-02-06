import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/features/auth/presentation/molecules/home_drawer_options_molecule.dart';

import '../templates/home_drawer/home_drawer_params.dart';

class HomeDrawerOptionsOrganismContainer extends StatelessWidget {
  const HomeDrawerOptionsOrganismContainer(
      {super.key, this.options, this.onLogout});

  final List<HomeDrawerOptionParam>? options;
  final void Function()? onLogout;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: colorTheme.white_blueGrey800WithOpacity2,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: colorTheme.blueGreyWithOpacity2_transparent,
            offset: const Offset(0, -1), // Shadow towards the top
            blurRadius: 3, // Shadow blur
          ),
        ],
      ),
      child: HomeDrawerOptionsMolecule(
        options: options,
        onLogout: onLogout,
      ),
    );
  }
}
