import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/features/auth/presentation/organisms/home_drawer_header_organism.dart';
import 'package:hani/features/auth/presentation/organisms/home_drawer_options_organism_container.dart';
import 'package:hani/features/auth/presentation/templates/home_drawer/home_drawer_params.dart';

import '../../../../../core/widgets/atoms/app_bar_atom.dart';

class HomeDrawerTemplate extends StatelessWidget {
  const HomeDrawerTemplate({super.key, this.params});

  final HomeDrawerParams? params;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      appBar: AppBarAtom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Menu',
          style: TextStyle(
              color: colorTheme.black_white,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: params?.onBackPressed,
          icon: FaIcon(
            FontAwesomeIcons.chevronLeft,
            color: colorTheme.primaryGreen_white,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          HomeDrawerHeaderOrganism(
            name: params?.profileName,
          ),
          const SizedBox(height: 20),
          HomeDrawerOptionsOrganismContainer(
            options: params?.options,
            onLogout: params?.onLogout,
          )
        ],
      ),
    );
  }
}
