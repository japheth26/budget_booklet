import 'package:flutter/material.dart';

import '../../../../core/color/custom_color.dart';
import '../../../../core/sizes/app_sizes.dart';

class DashboardBalanceCardAtom extends StatelessWidget {
  const DashboardBalanceCardAtom({
    super.key,
    this.value,
    this.balanceLabel,
  });

  final String? value;
  final String? balanceLabel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CustomColor.primaryGreen,
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              value ?? '',
              style: const TextStyle(
                  fontSize: AppSizes.h_20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              balanceLabel ?? '',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
