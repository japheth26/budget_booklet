import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/color/custom_color.dart';

class DashboardLineChartMolecule extends StatelessWidget {
  const DashboardLineChartMolecule({
    super.key,
    this.incomeSpots,
    this.expenseSpots,
  });

  final List<FlSpot>? incomeSpots;
  final List<FlSpot>? expenseSpots;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: true),
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(),
            rightTitles: const AxisTitles(),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, titleMeta) {
                DateTime date =
                    DateTime(2023, 1, 1).add(Duration(days: value.toInt()));
                return Text(DateFormat('MM/dd').format(date));
              },
            )),
          ),
          borderData: FlBorderData(show: true), // Show border
          lineBarsData: [
            LineChartBarData(
              spots: [
                ...(incomeSpots ?? []),
              ],
              isCurved: true,
              color: CustomColor.primaryGreen, // Color for income line
              dotData: const FlDotData(show: true),
              belowBarData: BarAreaData(
                  show: true, color: CustomColor.primaryGreen.withOpacity(0.3)),
            ),
            LineChartBarData(
              spots: [
                ...(expenseSpots ?? []),
              ],
              isCurved: true,
              color: Colors.red, // Color for expenses line
              dotData: const FlDotData(show: true),
              belowBarData:
                  BarAreaData(show: true, color: Colors.red.withOpacity(0.3)),
            ),
          ],
        ),
      ),
    );
  }
}
