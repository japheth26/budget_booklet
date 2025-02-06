import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../budget/presentation/templates/budget/budget_params.dart';

class DashboardPieChartData {
  final String? name;
  final Color? color;
  final double? amount;
  final double? percent;

  DashboardPieChartData({this.name, this.color, this.amount, this.percent});
}

class DashboardFloatingButtonOption {
  final String? label;
  final IconData? iconData;
  final void Function()? onTap;

  DashboardFloatingButtonOption({this.label, this.iconData, this.onTap});
}

class DashboardParams {
  final bool isLoading;
  final double income;
  final double expenses;
  final String balanceLabel;
  final List<DashboardPieChartData>? balancePieChartData;
  final List<DashboardPieChartData>? expensesPieChartData;
  final List<DashboardPieChartData>? incomePieChartData;
  final List<BudgetLinearIndicatorParam>? budgetList;
  final List<DashboardFloatingButtonOption>? floatingButtonOptions;
  final List<FlSpot>? incomeSpots;
  final List<FlSpot>? expenseSpots;
  final Future<void> Function()? onRefresh;

  DashboardParams({
    this.isLoading = false,
    this.income = 0,
    this.expenses = 0,
    this.balanceLabel = '',
    this.balancePieChartData,
    this.expensesPieChartData,
    this.incomePieChartData,
    this.budgetList,
    this.floatingButtonOptions,
    this.incomeSpots,
    this.expenseSpots,
    this.onRefresh,
  });
}
