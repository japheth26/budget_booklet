import 'package:flutter/material.dart';
import 'package:hani/features/dashboard/presentation/atoms/dashboard_pie_chart_atom.dart';
import 'package:hani/features/dashboard/presentation/atoms/dashboard_pie_chart_detail_atom.dart';

import '../templates/dashboard/dashboard_params.dart';

class DashboardPieChartMolecule extends StatelessWidget {
  const DashboardPieChartMolecule({super.key, this.pieChartDataList});

  final List<DashboardPieChartData>? pieChartDataList;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DashboardPieChartAtom(pieChartDataList: pieChartDataList),
        const SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 5,
          children: [
            ...(pieChartDataList ?? []).map((e) {
              return DashboardPieChartDetailAtom(
                label: e.name ?? '',
                value: e.amount?.toStringAsFixed(2) ?? '',
                colorIndicator: e.color,
              );
            }),
          ],
        ),
      ],
    );
  }
}
