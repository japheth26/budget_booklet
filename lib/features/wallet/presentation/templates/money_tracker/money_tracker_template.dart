import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/sizes/app_sizes.dart';
import 'package:hani/features/wallet/presentation/atoms/title_header_atom.dart';
import 'package:hani/features/wallet/presentation/atoms/tracker_auto_tab_router_atom.dart';
import 'package:hani/features/wallet/presentation/molecules/tracker_tab_bar_molecule.dart';
import 'package:hani/features/wallet/presentation/pages/tracker_menu.page.dart';
import 'package:hani/features/wallet/presentation/templates/money_tracker/money_tracker_params.dart';

import '../../../../../core/color/custom_color.dart';

class MoneyTrackerTemplate extends StatelessWidget {
  const MoneyTrackerTemplate({
    super.key,
    this.moneyTrackerParams,
    this.tabBarParams,
    this.autoTabRouterParams,
  });

  final MoneyTrackerParams? moneyTrackerParams;
  final MoneyTrackerTabBarParams? tabBarParams;
  final MoneyTrackerAutoTabRouterParams? autoTabRouterParams;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);

    return Scaffold(
      key: moneyTrackerParams?.endDrawerKey,
      endDrawer: const TrackerMenuPage(),
      appBar: AppBar(
        foregroundColor: Colors.transparent,
        shadowColor: Colors.black,
        surfaceTintColor: CustomColor.primaryGreen,
        backgroundColor: colorTheme.white_black,
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.chevronLeft),
          color: colorTheme.black_white,
          onPressed: moneyTrackerParams?.onBackPressed,
        ),
        actions: [
          // Stack(
          //   alignment: Alignment.centerRight,
          //   children: [
          //     Container(
          //       height: 25,
          //       width: 25,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(30),
          //         color: Colors.red,
          //       ),
          //     ),
          //     Container(
          //       height: 25,
          //       width: 25,
          //       margin: EdgeInsets.only(right: 15),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(30),
          //         color: Colors.blue,
          //       ),
          //     ),
          //     Container(
          //       height: 25,
          //       width: 25,
          //       margin: EdgeInsets.only(right: 30),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(30),
          //         color: Colors.yellow,
          //       ),
          //     )
          //   ],
          // ),
          IconButton(
            onPressed: moneyTrackerParams?.endDrawerOnPressed,
            icon: FaIcon(
              FontAwesomeIcons.ellipsisVertical,
              color: colorTheme.black_white,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 0,
        title: TrackerHeaderAtom(name: moneyTrackerParams?.name),
        bottom: TrackerTabBarMolecule(
          tabController: tabBarParams?.tabController,
          tabLabels: tabBarParams?.tabLabels,
          onTap: tabBarParams?.onTap,
        ),
      ),
      body: TrackerAutoTabRouterAtom(
        routes: autoTabRouterParams?.routes,
        tabsRouterInitialize: autoTabRouterParams?.tabsRouterInitialize,
      ),
    );
  }
}
