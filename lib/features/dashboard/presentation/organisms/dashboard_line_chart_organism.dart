import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/features/dashboard/presentation/molecules/dashboard_line_chart_molecule.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/widgets/icons/custom_icons.dart';

class DashboardLineChartOrganism extends StatelessWidget {
  const DashboardLineChartOrganism({
    super.key,
    this.label = '',
    this.incomeSpots,
    this.expenseSpots,
    this.isLoading = false,
  });

  final String label;
  final List<FlSpot>? incomeSpots;
  final List<FlSpot>? expenseSpots;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Skeletonizer(
      enabled: isLoading,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Builder(builder: (context) {
              if ((incomeSpots ?? []).isEmpty && (expenseSpots ?? []).isEmpty) {
                return Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: CustomIcons.no_data,
                    ),
                    const SizedBox(height: 10),
                    const Text('No Data Found'),
                  ],
                );
              }

              return DashboardLineChartMolecule(
                incomeSpots: incomeSpots,
                expenseSpots: expenseSpots,
              );
            }),
          ],
        ),
      ),
    );
  }
}
