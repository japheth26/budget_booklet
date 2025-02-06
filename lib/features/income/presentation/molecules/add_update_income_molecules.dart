import 'package:flutter/material.dart';

import '../../../../core/widgets/atoms/date_picker_atom.dart';
import '../../../../core/widgets/atoms/multi_text_field_atom.dart';
import '../../../../core/widgets/atoms/text_field_atom.dart';

class AddUpdateIncomeMolecules extends StatelessWidget {
  const AddUpdateIncomeMolecules({
    super.key,
    this.categoryController,
    this.amountController,
    this.datePickerController,
    this.notesController,
    this.categoryGlobalKey,
    this.amountGlobalKey,
    this.datePickerGlobakKey,
    this.categoryValidator,
    this.amountValidator,
    this.dateValidator,
  });

  final TextEditingController? categoryController;
  final TextEditingController? amountController;
  final TextEditingController? datePickerController;
  final TextEditingController? notesController;

  final GlobalKey<FormFieldState>? categoryGlobalKey;
  final GlobalKey<FormFieldState>? amountGlobalKey;
  final GlobalKey<FormFieldState>? datePickerGlobakKey;

  final String? Function(String?)? categoryValidator;
  final String? Function(String?)? amountValidator;
  final String? Function(String?)? dateValidator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldAtom(
          label: 'Category',
          isRequired: true,
          controller: categoryController,
          globalKey: categoryGlobalKey,
          validator: categoryValidator,
        ),
        TextFieldAtom(
          label: 'Amount',
          isRequired: true,
          controller: amountController,
          globalKey: amountGlobalKey,
          validator: amountValidator,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        DatePickerAtom(
          label: 'Date',
          isRequired: true,
          controller: datePickerController,
          globalKey: datePickerGlobakKey,
          validator: dateValidator,
        ),
        MultiTextFieldAtom(
          label: 'Notes',
          controller: notesController,
        ),
      ],
    );
  }
}
