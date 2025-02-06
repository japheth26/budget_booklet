import 'package:flutter/material.dart';
import 'package:hani/features/dashboard/presentation/molecules/dashboard_pie_chart_molecule.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/color/color_theme.dart';
import '../templates/dashboard/dashboard_params.dart';

class DashboardPieChartCardOrganism extends StatelessWidget {
  const DashboardPieChartCardOrganism(
      {super.key,
      this.label = '',
      this.pieChartDataList,
      this.isLoading = false});

  final String label;
  final List<DashboardPieChartData>? pieChartDataList;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Skeletonizer(
      enabled: isLoading,
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
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 20),
            Builder(builder: (context) {
              if ((pieChartDataList ?? []).isEmpty) {
                return Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const DashboardPieChartMolecule());
              }

              return DashboardPieChartMolecule(
                  pieChartDataList: pieChartDataList);
            })
          ],
        ),
      ),
    );
  }
}
