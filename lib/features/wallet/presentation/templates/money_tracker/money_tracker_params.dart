import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MoneyTrackerTabBarParams {
  final TabController? tabController;
  final List<String>? tabLabels;
  final void Function(int)? onTap;

  MoneyTrackerTabBarParams({this.tabController, this.tabLabels, this.onTap});
}

class MoneyTrackerAutoTabRouterParams {
  final List<PageRouteInfo<dynamic>>? routes;
  final Function(TabsRouter)? tabsRouterInitialize;

  MoneyTrackerAutoTabRouterParams({this.routes, this.tabsRouterInitialize});
}

class MoneyTrackerParams {
  final String? walletNumber;
  final String? name;
  final GlobalKey<ScaffoldState>? endDrawerKey;
  final void Function()? endDrawerOnPressed;
  final void Function()? onBackPressed;

  MoneyTrackerParams({
    this.walletNumber,
    this.name,
    this.endDrawerOnPressed,
    this.onBackPressed,
    this.endDrawerKey,
  });
}
