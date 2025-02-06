import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/color/color_theme.dart';
import '../templates/home/home_params.dart';

class WalletCardAtom extends StatelessWidget {
  const WalletCardAtom({
    super.key,
    this.name,
    this.balance,
    this.walletNumber,
    this.pieChartDataList,
    this.onTap,
  });

  final String? name;
  final String? balance;
  final String? walletNumber;
  final List<HomePieChartData>? pieChartDataList;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
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
          onTap: onTap,
          titleAlignment: ListTileTitleAlignment.center,
          title: Text(
            name ?? '',
            style: TextStyle(
              color: colorTheme.black_white,
              fontWeight: FontWeight.w600,
            ),
          ),
          dense: true,
          leading: SizedBox(
            width: 50,
            child: PieChart(
              PieChartData(
                sections: [
                  ...(pieChartDataList ?? []).map((e) {
                    return PieChartSectionData(
                      showTitle: false,
                      value: e.value,
                      color: e.color,
                      radius: 10,
                    );
                  }),
                ],
              ),
            ),
          ),
          isThreeLine: true,
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                balance ?? '',
                style: TextStyle(
                  color: colorTheme.black_white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                walletNumber ?? '',
                style: TextStyle(
                  color: colorTheme.black_white,
                ),
              ),
            ],
          ),
          trailing: const FaIcon(
            FontAwesomeIcons.ellipsisVertical,
            size: 20,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
