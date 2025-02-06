import 'package:flutter/material.dart';
import 'package:hani/features/income/presentation/atoms/income_item_atom.dart';

import '../templates/income/income_params.dart';

class IncomeListMolecule extends StatelessWidget {
  const IncomeListMolecule({super.key, this.incomeItemParams});

  final List<IncomeItemParam>? incomeItemParams;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: (incomeItemParams ?? []).map((e) {
        return IncomeItemAtom(
          faIconName: e.faIconName,
          title: e.title,
          leftSubtitle: e.leftSubtitle,
          rightSubtitle: e.rightSubtitle,
          onTap: e.onTap,
        );
      }).toList(),
    );
  }
}
