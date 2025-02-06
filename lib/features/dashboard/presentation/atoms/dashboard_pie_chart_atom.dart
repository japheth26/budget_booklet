import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';

import '../templates/dashboard/dashboard_params.dart';

class DashboardPieChartAtom extends StatelessWidget {
  const DashboardPieChartAtom({super.key, this.pieChartDataList});

  final List<DashboardPieChartData>? pieChartDataList;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    final List<DashboardPieChartData> list = pieChartDataList ?? [];
    final double total = list.isNotEmpty
        ? list
            .map((e) => e.amount ?? 0)
            .reduce((value, element) => value + element)
        : 0;
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              sections: list.isNotEmpty
                  ? list.map((e) {
                      return PieChartSectionData(
                        showTitle: false,
                        value: e.percent,
                        color: e.color,
                        radius: 30,
                        badgePositionPercentageOffset: 1,
                        badgeWidget: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            '${e.percent}%',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      );
                    }).toList()
                  : [
                      PieChartSectionData(
                        showTitle: false,
                        value: 100,
                        color: Colors.grey,
                        radius: 30,
                        badgePositionPercentageOffset: 1,
                        badgeWidget: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            '${0}%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
            ),
          ),
          Text(
            list.isNotEmpty ? total.toStringAsFixed(2) : '0.00',
            style: TextStyle(
              color: colorTheme.black_white,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
