import 'package:flutter/material.dart';
import 'package:hani/features/dashboard/presentation/atoms/dashboard_balance_card_atom.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DashboardBalanceOrganism extends StatelessWidget {
  const DashboardBalanceOrganism({
    super.key,
    this.balanceLabel = '',
    this.income = 0,
    this.expenses = 0,
    this.isLoading = false,
  });

  final String balanceLabel;

  final double income;
  final double expenses;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: Column(
        children: [
          DashboardBalanceCardAtom(
            balanceLabel: balanceLabel,
            value: (income - expenses).toStringAsFixed(2),
          ),
        ],
      ),
    );
  }
}
