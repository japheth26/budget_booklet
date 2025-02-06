import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TrackerAutoTabRouterAtom extends StatelessWidget {
  const TrackerAutoTabRouterAtom(
      {super.key, this.routes, this.tabsRouterInitialize});

  final List<PageRouteInfo<dynamic>>? routes;
  final void Function(TabsRouter)? tabsRouterInitialize;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: routes,
      builder: (context, child) {
        if (tabsRouterInitialize != null) {
          tabsRouterInitialize!(AutoTabsRouter.of(context));
        }
        return child;
      },
    );
  }
}
