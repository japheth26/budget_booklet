import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/dependency_injection/injection.dart';

import '../../../../core/color/custom_color.dart';

class IncomeItemAtom extends StatelessWidget {
  const IncomeItemAtom({
    super.key,
    this.faIconName = '',
    this.title = '',
    this.leftSubtitle = '',
    this.rightSubtitle = '',
    this.onTap,
  });

  final String faIconName;
  final String title;
  final String leftSubtitle;
  final String rightSubtitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: colorTheme.white_blueGrey800WithOpacity3,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, -1), // Shadow towards the top
              blurRadius: 10, // Shadow blur
            ),
          ],
        ),
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: ListTile(
          leading: faIconName.isNotEmpty
              ? FaIcon(
                  faIconNameMapping[faIconName],
                  color: CustomColor.primaryGreen,
                )
              : const SizedBox(),
          title: Text(
            title,
            style: TextStyle(
              color: colorTheme.black_white,
            ),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                leftSubtitle,
                style: TextStyle(
                  color: colorTheme.black_white,
                ),
              ),
              Text(
                rightSubtitle,
                style: TextStyle(
                  color: colorTheme.black_white,
                ),
              )
            ],
          ),
          trailing: const FaIcon(
            FontAwesomeIcons.chevronRight,
            size: 20,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
