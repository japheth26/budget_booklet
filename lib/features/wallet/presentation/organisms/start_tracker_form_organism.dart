import 'package:flutter/material.dart';
import 'package:hani/core/widgets/atoms/form_button_atom.dart';
import 'package:hani/features/wallet/presentation/molecules/start_tracker_input_molecule.dart';
import 'package:hani/features/wallet/presentation/templates/start_tracker/start_tracker_params.dart';

class StartTrackerFormOrganism extends StatelessWidget {
  const StartTrackerFormOrganism({
    super.key,
    this.buttonParams,
    this.inputParams,
  });

  final StartTrackerInputParams? inputParams;
  final StartTrackerButtonParams? buttonParams;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StartTrackerInputMolecule(
          datePickerLabel: inputParams?.datePickerLabel,
          targetAmountLabel: inputParams?.targetAmountLabel,
          notesLabel: inputParams?.notesLabel,
          datePickerController: inputParams?.datePickerController,
          targetAmountController: inputParams?.targetAmountController,
          notesController: inputParams?.notesController,
          datePickerValidator: inputParams?.datePickerValidator,
          targetAmountValidator: inputParams?.targetAmountValidator,
          datePickerGlobalKey: inputParams?.datePickerGlobalKey,
          targetAmountGlobalKey: inputParams?.targetAmountGlobalKey,
          onStartDateSelected: inputParams?.onStartDateSelected,
        ),
        const SizedBox(height: 50),
        FormButtonAtom(
          label: buttonParams?.submitLabel ?? '',
          onPressed: buttonParams?.onPressed,
        ),
      ],
    );
  }
}
