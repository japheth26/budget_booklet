import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/features/auth/presentation/molecules/home_drawer_profile_molecule.dart';

class HomeDrawerHeaderOrganism extends StatelessWidget {
  const HomeDrawerHeaderOrganism({super.key, this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Container(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: colorTheme.blueAccentWithOpacity3_blueGrey800WithOpacity3,
        borderRadius: BorderRadius.circular(10),
      ),
      child: HomeDrawerProfileMolecule(name: name),
    );
  }
}
