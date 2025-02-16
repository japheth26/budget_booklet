import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/custom_color.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';
import 'package:hani/features/wallet/presentation/templates/tracker_menu/tracker_menu_template.dart';

import '../templates/tracker_menu/tracker_menu_params.dart';

class TrackerMenuPage extends StatefulWidget {
  const TrackerMenuPage({super.key});

  @override
  State<TrackerMenuPage> createState() => _TrackerMenuPageState();
}

class _TrackerMenuPageState extends State<TrackerMenuPage> {
  late StackRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AutoRouter.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return TrackerMenuTemplate(
      params: TrackerMenuParams(items: [
        TrackerMenuItemParam(
            iconData: FontAwesomeIcons.book,
            label: 'Monthly History',
            color: CustomColor.royalBlue,
            onTap: () {}),
        TrackerMenuItemParam(
            iconData: FontAwesomeIcons.icons,
            label: 'Income Categories',
            color: Colors.green,
            onTap: () {
              _router.push(CategoryRoute(
                transactionType: TransactionType.income,
              ));
            }),
        TrackerMenuItemParam(
            iconData: FontAwesomeIcons.icons,
            label: 'Expense Categories',
            color: Colors.pink,
            onTap: () {
              _router.push(CategoryRoute(
                transactionType: TransactionType.expense,
              ));
            }),
        TrackerMenuItemParam(
          iconData: FontAwesomeIcons.tags,
          label: 'Income Tags',
          color: Colors.green,
          onTap: () => _router.push(
            TagRoute(
              transactionType: TransactionType.income,
            ),
          ),
        ),
        TrackerMenuItemParam(
          iconData: FontAwesomeIcons.tags,
          label: 'Expense Tags',
          color: Colors.pink,
          onTap: () => _router.push(
            TagRoute(
              transactionType: TransactionType.expense,
            ),
          ),
        ),
        TrackerMenuItemParam(
            iconData: FontAwesomeIcons.users,
            label: 'Collaborate',
            color: Colors.deepPurple,
            onTap: () {}),
      ]),
    );
  }
}
