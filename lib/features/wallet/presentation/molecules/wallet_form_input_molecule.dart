import 'package:flutter/material.dart';
import 'package:hani/core/sizes/app_sizes.dart';
import 'package:hani/core/widgets/atoms/form_description_atom.dart';
import 'package:hani/core/widgets/atoms/form_header_atom.dart';
import 'package:hani/core/widgets/atoms/multi_text_field_atom.dart';

import '../../../../core/widgets/atoms/text_field_atom.dart';

class WalletFormInputMolecule extends StatelessWidget {
  const WalletFormInputMolecule({
    super.key,
    this.loading = false,
    this.nameController,
    this.initialAmountController,
    this.nameGlobalKey,
    this.initialAmountGlobalKey,
    this.nameValidator,
    this.initialAmountValidator,
    this.spendAmountController,
    this.saveAmountController,
    this.goalController,
    this.planController,
    this.spendAmountGlobalKey,
    this.saveAmountGlobalKey,
    this.spendAmountValidator,
    this.saveAmountValidator,
  });
  final bool loading;
  final TextEditingController? nameController;
  final TextEditingController? initialAmountController;
  final TextEditingController? spendAmountController;
  final TextEditingController? saveAmountController;
  final TextEditingController? goalController;
  final TextEditingController? planController;

  final GlobalKey<FormFieldState>? nameGlobalKey;
  final GlobalKey<FormFieldState>? initialAmountGlobalKey;
  final GlobalKey<FormFieldState>? spendAmountGlobalKey;
  final GlobalKey<FormFieldState>? saveAmountGlobalKey;

  final String? Function(String?)? nameValidator;
  final String? Function(String?)? initialAmountValidator;
  final String? Function(String?)? spendAmountValidator;
  final String? Function(String?)? saveAmountValidator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FormHeaderAtom(label: 'Wallet Info'),
          TextFieldAtom(
            enabled: !loading,
            controller: nameController,
            globalKey: nameGlobalKey,
            validator: nameValidator,
            label: 'Label',
            isRequired: true,
          ),
          const SizedBox(height: 5),
          TextFieldAtom(
            enabled: !loading,
            controller: initialAmountController,
            globalKey: initialAmountGlobalKey,
            validator: initialAmountValidator,
            label: 'Initial Amount',
            isRequired: true,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          const SizedBox(height: 10),
          const FormHeaderAtom(label: 'Monthly Plan'),
          TextFieldAtom(
            enabled: !loading,
            controller: spendAmountController,
            globalKey: spendAmountGlobalKey,
            validator: spendAmountValidator,
            label: 'Amount To Spend',
            isRequired: true,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          const FormDescriptionAtom(
              description: 'How much money do you have to spend this month?'),
          const SizedBox(height: 10),
          TextFieldAtom(
            enabled: !loading,
            controller: saveAmountController,
            globalKey: saveAmountGlobalKey,
            validator: saveAmountValidator,
            label: 'Amount To Save',
            isRequired: true,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          const FormDescriptionAtom(
              description: 'How much money would you like to save this month?'),
          const SizedBox(height: 10),
          const FormHeaderAtom(label: 'Notes'),
          MultiTextFieldAtom(
            label: 'Goal',
            controller: goalController,
          ),
          const FormDescriptionAtom(
              description: 'What are your goals for this month?'),
          const SizedBox(height: 10),
          MultiTextFieldAtom(
            label: 'Plan',
            controller: planController,
          ),
          const FormDescriptionAtom(
              description: 'How will you achive your goal?'),
        ],
      ),
    );
  }
}
