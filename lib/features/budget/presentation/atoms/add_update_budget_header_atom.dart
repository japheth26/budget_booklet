import 'package:flutter/material.dart';

import '../../../../core/sizes/app_sizes.dart';

class AddUpdateBudgetHeaderAtom extends StatelessWidget {
  const AddUpdateBudgetHeaderAtom({super.key, this.existingBudget = false});

  final bool existingBudget;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        '${existingBudget ? "Update" : "Create"} budget',
        style: const TextStyle(
          color: Colors.black,
          fontSize: AppSizes.h_20,
        ),
      ),
    );
  }
}
