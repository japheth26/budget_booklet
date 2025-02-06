import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/features/wallet/presentation/atoms/tracker_tab_atom.dart';

import '../../../../core/color/custom_color.dart';

class TrackerTabBarMolecule extends StatelessWidget
    implements PreferredSizeWidget {
  const TrackerTabBarMolecule(
      {super.key, this.tabController, this.tabLabels, this.onTap});

  final TabController? tabController;
  final List<String>? tabLabels;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return tabController != null
        ? _tabBar(context)
        : DefaultTabController(
            length: tabLabels?.length ?? 0, child: _tabBar(context));
  }

  TabBar _tabBar(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return TabBar(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 0, left: 0),
      indicatorPadding: EdgeInsets.zero,
      controller: tabController,
      indicator: BoxDecoration(
        color: CustomColor.primaryGreen,
        borderRadius: BorderRadius.circular(30),
      ),
      labelColor: Colors.white,
      unselectedLabelColor: colorTheme.black_white,
      splashBorderRadius: BorderRadius.circular(30),
      dividerColor: Colors.transparent,
      onTap: onTap,
      labelPadding: EdgeInsets.zero,
      tabs: [
        ...(tabLabels ?? []).map((e) {
          return TrackerTabAtom(label: e);
        }),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
