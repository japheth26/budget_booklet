import 'package:flutter/material.dart';

import '../../../../core/widgets/atoms/date_range_picker_atom.dart';
import '../../../../core/widgets/atoms/multi_text_field_atom.dart';
import '../../../../core/widgets/atoms/text_field_atom.dart';

class AddUpdateBudgetFieldsMolecule extends StatelessWidget {
  const AddUpdateBudgetFieldsMolecule({
    super.key,
    this.firstDate,
    this.lastDate,
    this.nameController,
    this.amountController,
    this.dateRangePickerController,
    this.notesController,
    this.nameGlobalKey,
    this.amountGlobalKey,
    this.nameValidator,
    this.amountValidator,
    this.onDateTimeRangeSelected,
  });

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
          firstDate: firstDate,
          lastDate: lastDate,
          controller: dateRangePickerController,
          onDateTimeRangeSelected: onDateTimeRangeSelected,
        ),
        MultiTextFieldAtom(
          label: 'Notes',
          controller: notesController,
        ),
      ],
    );
  }
}
