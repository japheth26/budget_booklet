import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/features/dashboard/presentation/atoms/dashboard_floating_button_atom.dart';
import 'package:hani/features/dashboard/presentation/organisms/dashboard_budget_card_organism.dart';
import 'package:hani/features/dashboard/presentation/organisms/dashboard_pie_chart_card_organism.dart';
import 'package:hani/features/dashboard/presentation/organisms/dashboard_line_chart_organism.dart';
import 'package:hani/features/dashboard/presentation/templates/dashboard/dashboard_params.dart';

import '../../organisms/dashboard_balance_organism.dart';

class DashboardTemplate extends StatelessWidget {
  const DashboardTemplate({super.key, this.dashboardParams});

  final DashboardParams? dashboardParams;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      floatingActionButton: DashboardFloatingButtonAtom(
        options: dashboardParams?.floatingButtonOptions,
      ),
      body: RefreshIndicator(
        onRefresh: dashboardParams?.onRefresh ?? () async {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              DashboardBalanceOrganism(
                isLoading: dashboardParams?.isLoading ?? false,
                balanceLabel: dashboardParams?.balanceLabel ?? '',
                income: dashboardParams?.income ?? 0,
                expenses: dashboardParams?.expenses ?? 0,
              ),
              const SizedBox(height: 10),
              DashboardPieChartCardOrganism(
                isLoading: dashboardParams?.isLoading ?? false,
                label: 'Balance',
                pieChartDataList: dashboardParams?.balancePieChartData,
              ),
              const SizedBox(height: 10),
              DashboardPieChartCardOrganism(
                isLoading: dashboardParams?.isLoading ?? false,
                label: 'Income',
                pieChartDataList: dashboardParams?.incomePieChartData,
              ),
              const SizedBox(height: 10),
              DashboardPieChartCardOrganism(
                isLoading: dashboardParams?.isLoading ?? false,
                label: 'Expenses',
                pieChartDataList: dashboardParams?.expensesPieChartData,
              ),
              const SizedBox(height: 10),
              DashboardBudgetCardOrganism(
                isLoading: dashboardParams?.isLoading ?? false,
                label: 'Budget',
                budgetList: dashboardParams?.budgetList,
              ),
              const SizedBox(height: 10),
              DashboardLineChartOrganism(
                isLoading: dashboardParams?.isLoading ?? false,
                label: 'Recent Activity',
                incomeSpots: dashboardParams?.incomeSpots,
                expenseSpots: dashboardParams?.expenseSpots,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
