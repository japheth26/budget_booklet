import 'package:flutter/material.dart';
import 'package:hani/features/budget/presentation/atoms/available_balance_atom.dart';
import 'package:hani/features/budget/presentation/molecules/add_update_budget_fields_molecule.dart';

import '../../../../core/widgets/atoms/form_button_atom.dart';
import '../atoms/add_update_budget_header_atom.dart';

class AddUpdateBudgetFormOrganism extends StatelessWidget {
  const AddUpdateBudgetFormOrganism({
    super.key,
    this.existingBudget = false,
    this.unbudgetedAmount,
    this.firstDate,
    this.lastDate,
    this.nameController,
    this.amountController,
    this.dateRangePickerController,
    this.notesController,
    this.amountGlobalKey,
    this.nameGlobalKey,
    this.nameValidator,
    this.amountValidator,
    this.onDateTimeRangeSelected,
    this.onSubmit,
  });

  final bool existingBudget;
  final double? unbudgetedAmount;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final TextEditingController? nameController;
  final TextEditingController? amountController;
  final TextEditingController? dateRangePickerController;
  final TextEditingController? notesController;
  final GlobalKey<FormFieldState>? nameGlobalKey;
  final GlobalKey<FormFieldState>? amountGlobalKey;
  final String? Function(String?)? nameValidator;
  final String? Function(String?)? amountValidator;
  final void Function(DateTimeRange?)? onDateTimeRangeSelected;
  final Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height - kToolbarHeight - 120,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            AddUpdateBudgetHeaderAtom(existingBudget: existingBudget),
            const SizedBox(height: 20),
            AvailableBalanceAtom(amount: unbudgetedAmount),
            const SizedBox(height: 10),
            AddUpdateBudgetFieldsMolecule(
              firstDate: firstDate,
              lastDate: lastDate,
              nameController: nameController,
              amountController: amountController,
              dateRangePickerController: dateRangePickerController,
              notesController: notesController,
              amountGlobalKey: amountGlobalKey,
              nameGlobalKey: nameGlobalKey,
              nameValidator: nameValidator,
              amountValidator: amountValidator,
              onDateTimeRangeSelected: onDateTimeRangeSelected,
            ),
            const Expanded(child: SizedBox()),
            FormButtonAtom(
                label: existingBudget ? 'Update' : 'Create',
                onPressed: onSubmit),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
