import 'package:flutter/material.dart';

import '../../../../core/widgets/atoms/date_range_picker_atom.dart';
import '../../../../core/widgets/atoms/multi_text_field_atom.dart';
import '../../../../core/widgets/atoms/text_field_atom.dart';

class AddUpdateBudgetFieldsMolecule extends StatelessWidget {
  const AddUpdateBudgetFieldsMolecule({
    super.key,
    this.nameController,
    this.amountController,
    this.dateRangePickerController,
    this.notesController,
    this.nameGlobalKey,
    this.amountGlobalKey,
    this.nameValidator,
    this.amountValidator,
  });

  final TextEditingController? nameController;
  final TextEditingController? amountController;
  final TextEditingController? dateRangePickerController;
  final TextEditingController? notesController;

  final GlobalKey<FormFieldState>? nameGlobalKey;
  final GlobalKey<FormFieldState>? amountGlobalKey;

  final String? Function(String?)? nameValidator;
  final String? Function(String?)? amountValidator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldAtom(
          label: 'Name',
          isRequired: true,
          controller: nameController,
          globalKey: nameGlobalKey,
          validator: nameValidator,
        ),
        TextFieldAtom(
          label: 'Amount',
          isRequired: true,
          controller: amountController,
          globalKey: amountGlobalKey,
          validator: amountValidator,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        DateRangePickerAtom(
          label: 'Date Range',
          controller: dateRangePickerController,
        ),
        MultiTextFieldAtom(
          label: 'Notes',
          controller: notesController,
        ),
      ],
    );
  }
}
