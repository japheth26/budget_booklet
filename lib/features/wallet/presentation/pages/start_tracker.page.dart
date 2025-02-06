import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hani/features/wallet/presentation/templates/start_tracker/start_tracker_params.dart';
import 'package:hani/features/wallet/presentation/templates/start_tracker/start_tracker_template.dart';

import '../../../../core/controller/masked_text_controller.dart';
import '../../../../core/validator/guard.dart';

@RoutePage()
class StartTrackerPage extends StatefulWidget {
  const StartTrackerPage({super.key});

  @override
  State<StartTrackerPage> createState() => _StartTrackerPageState();
}

class _StartTrackerPageState extends State<StartTrackerPage> {
  final TextEditingController _datePickerController = TextEditingController();
  final TextEditingController _targetAmountController =
      MoneyMaskedTextController();
  final TextEditingController _notesController = TextEditingController();

  final GlobalKey<FormFieldState> _datePickerGlobalKey = GlobalKey();
  final GlobalKey<FormFieldState> _targetAmountGlobalKey = GlobalKey();

  @override
  void dispose() {
    super.dispose();
    _datePickerController.dispose();
    _targetAmountController.dispose();
    _notesController.dispose();
    _datePickerGlobalKey.currentState!.dispose();
    _targetAmountGlobalKey.currentState!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StartTrackerTemplate(
      inputParams: StartTrackerInputParams(
          datePickerGlobalKey: _datePickerGlobalKey,
          targetAmountGlobalKey: _targetAmountGlobalKey,
          datePickerController: _datePickerController,
          targetAmountController: _targetAmountController,
          notesController: _notesController,
          datePickerLabel: 'Start Date',
          targetAmountLabel: 'Target Amount To Save',
          notesLabel: 'Notes',
          datePickerValidator: (String? value) {
            return Guard.againstEmptyString('Start Date', value);
          },
          targetAmountValidator: (String? value) {
            return Guard.combine([
              Guard.againstEmptyString('Target Amount', value),
              Guard.againstInvalidDouble('Target Amount', value),
              Guard.againstZero('Target Amount', value)
            ]);
          }),
      buttonParams: StartTrackerButtonParams(
          submitLabel: 'Start Money Tracker',
          onPressed: () {
            final isValidDate = _datePickerGlobalKey.currentState!.validate();
            final isValidTargetAmount =
                _targetAmountGlobalKey.currentState!.validate();
            if (isValidDate && isValidTargetAmount) {
              //
            }
          }),
    );
  }
}
