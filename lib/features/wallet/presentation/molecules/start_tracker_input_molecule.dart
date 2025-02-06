import 'package:flutter/material.dart';

import '../../../../core/widgets/atoms/text_field_atom.dart';
import '../../../../core/widgets/atoms/multi_text_field_atom.dart';
import '../../../../core/widgets/atoms/date_picker_atom.dart';

class StartTrackerInputMolecule extends StatelessWidget {
  const StartTrackerInputMolecule({
    super.key,
    this.datePickerLabel,
    this.targetAmountLabel,
    this.notesLabel,
    this.datePickerController,
    this.targetAmountController,
    this.notesController,
    this.datePickerValidator,
    this.targetAmountValidator,
    this.datePickerGlobalKey,
    this.targetAmountGlobalKey,
    this.onStartDateSelected,
  });

  final String? datePickerLabel;
  final String? targetAmountLabel;
  final String? notesLabel;

  final TextEditingController? datePickerController;
  final TextEditingController? targetAmountController;
  final TextEditingController? notesController;

  final String? Function(String?)? datePickerValidator;
  final String? Function(String?)? targetAmountValidator;

  final GlobalKey<FormFieldState>? datePickerGlobalKey;
  final GlobalKey<FormFieldState>? targetAmountGlobalKey;

  final dynamic Function(DateTime?)? onStartDateSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        DatePickerAtom(
          globalKey: datePickerGlobalKey,
          label: datePickerLabel,
          controller: datePickerController,
          isRequired: true,
          validator: datePickerValidator,
          onDateSelected: onStartDateSelected,
          lastDate: DateTime.now(),
        ),
        const SizedBox(height: 5),
        TextFieldAtom(
          globalKey: targetAmountGlobalKey,
          label: targetAmountLabel,
          controller: targetAmountController,
          isRequired: true,
          validator: targetAmountValidator,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        const SizedBox(height: 5),
        MultiTextFieldAtom(
          label: notesLabel,
          controller: notesController,
        ),
      ],
    );
  }
}
