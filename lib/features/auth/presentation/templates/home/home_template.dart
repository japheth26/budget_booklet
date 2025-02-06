import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/features/auth/presentation/organisms/home_data_list_organisms.dart';
import 'package:hani/features/auth/presentation/pages/home_drawer.page.dart';
import 'package:hani/features/auth/presentation/templates/home/home_params.dart';

import '../../../../../core/color/custom_color.dart';
import '../../../../../core/widgets/atoms/floating_add_button_atom.dart';
import '../../atoms/title_header_atom.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({
    super.key,
    this.params,
  });

  final HomeParams? params;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);

    return Scaffold(
      backgroundColor: colorTheme.white_black,
      appBar: AppBar(
        foregroundColor: Colors.transparent,
        shadowColor: Colors.black,
        surfaceTintColor: CustomColor.primaryGreen,
        backgroundColor: colorTheme.white_black,
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.bars),
          color: colorTheme.black_white,
          onPressed: params?.drawerOnPressed,
        ),
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 0,
        title: const TitleHeaderAtom(),
      ),
      floatingActionButton: FloatingAddButtonAtom(
        onPressed:
            params != null && !params!.loading ? params?.addOnPressed : null,
      ),
      body: HomeDataListOrganism(
        loading: params?.loading ?? false,
        onRefresh: params?.onRefresh,
        homeItemParams: params?.homeItemParams,
      ),
    );
  }
}
