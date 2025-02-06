import 'package:flutter/material.dart';
import 'package:hani/core/widgets/atoms/form_button_atom.dart';
import 'package:hani/features/income/presentation/atoms/add_update_income_header_atom.dart';
import 'package:hani/features/income/presentation/molecules/add_update_income_molecules.dart';

class AddUpdateIncomeFormOrganism extends StatelessWidget {
  const AddUpdateIncomeFormOrganism(
      {super.key,
      this.existing = false,
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
      this.onSubmit});

  final bool existing;
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
  final Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height - kToolbarHeight - 120,
      ),
      child: Column(
        children: [
          AddUpdateIncomeHeaderAtom(existing: existing),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AddUpdateIncomeMolecules(
              categoryController: categoryController,
              amountController: amountController,
              datePickerController: datePickerController,
              notesController: notesController,
              categoryGlobalKey: categoryGlobalKey,
              amountGlobalKey: amountGlobalKey,
              datePickerGlobakKey: datePickerGlobakKey,
              categoryValidator: categoryValidator,
              amountValidator: amountValidator,
              dateValidator: dateValidator,
            ),
          ),
          const Expanded(child: SizedBox()),
          FormButtonAtom(label: 'Add Income', onPressed: onSubmit),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
