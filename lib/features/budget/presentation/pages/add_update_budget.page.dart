import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/features/budget/presentation/templates/add_update_budget/add_update_budget_params.dart';
import 'package:hani/features/budget/presentation/templates/add_update_budget/add_update_budget_template.dart';

import '../../../../core/controller/masked_text_controller.dart';

@RoutePage()
class AddUpdateBudgetPage extends StatefulWidget {
  const AddUpdateBudgetPage({super.key, this.budgetId});

  final String? budgetId;

  @override
  State<AddUpdateBudgetPage> createState() => _AddUpdateBudgetPageState();
}

class _AddUpdateBudgetPageState extends State<AddUpdateBudgetPage> {
  final TextEditingController _dateRangePickerController =
      TextEditingController();
  final TextEditingController _amountController = MoneyMaskedTextController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  final GlobalKey<FormFieldState> _nameGlobalKey = GlobalKey();
  final GlobalKey<FormFieldState> _amountGlobalKey = GlobalKey();

  late StackRouter _router;
  late DateTimeRange? _timeRange;

  @override
  void initState() {
    super.initState();

    _router = AutoRouter.of(context);
  }

  @override
  void dispose() {
    super.dispose();
    _dateRangePickerController.dispose();
    _amountController.dispose();
    _nameController.dispose();
    _notesController.dispose();

    _nameGlobalKey.currentState?.dispose();
    _amountGlobalKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AddUpdateBudgetTemplate(
      params: AddUpdateBudgetParams(
        onBackPressed: () {
          _router.maybePop();
        },
        nameController: _nameController,
        amountController: _amountController,
        dateRangePickerController: _dateRangePickerController,
        notesController: _notesController,
        nameGlobalKey: _nameGlobalKey,
        amountGlobalKey: _amountGlobalKey,
        existingBudget: widget.budgetId != null,
        nameValidator: (value) {
          return Guard.againstEmptyString('Name', value);
        },
        amountValidator: (value) {
          return Guard.combine([
            Guard.againstEmptyString('Amount', value),
            Guard.againstInvalidDouble('Amount', value),
            Guard.againstZero('Amount', value)
          ]);
        },
        onDateTimeRangeSelected: (timeRange) {
          _timeRange = timeRange;
        },
        onSubmit: () {
          final isNameValid = _nameGlobalKey.currentState!.validate();
          final isAmountValid = _amountGlobalKey.currentState!.validate();

          if (isNameValid && isAmountValid) {
            _createBudget();
          }
        },
      ),
    );
  }

  void _createBudget() {
    final name = _nameController.text;
    final amount = double.parse(_amountController.text.replaceAll(',', ''));
    final notes = _notesController.text;
    final now = DateTime.now();

    late DateTime from;
    late DateTime to;

    if (_timeRange == null) {
      from = DateTime(now.year, now.month, 1);
      to = DateTime(now.year, now.month + 1, 1)
          .subtract(const Duration(days: 1));
    } else {
      from = _timeRange!.start;
      to = _timeRange!.end;
    }

    print('name: $name');
    print('amount: $amount');
    print('notes: $notes');
    print('from: ${from.toIso8601String()}');
    print('to: ${to.toIso8601String()}');
  }
}
