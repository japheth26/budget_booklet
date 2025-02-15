import 'package:flutter/material.dart';
import 'package:hani/core/widgets/atoms/form_button_atom.dart';
import 'package:hani/features/wallet/presentation/atoms/wallet_form_header_atom.dart';
import 'package:hani/features/wallet/presentation/molecules/wallet_form_input_molecule.dart';

class WalletFormOrganism extends StatelessWidget {
  const WalletFormOrganism(
      {super.key,
      this.loading = false,
      this.existing = false,
      this.nameController,
      this.initialAmountController,
      this.nameGlobalKey,
      this.initialAmountGlobalKey,
      this.nameValidator,
      this.initialAmountValidator,
      this.onSubmit,
      this.spendAmountController,
      this.saveAmountController,
      this.goalController,
      this.planController,
      this.spendAmountGlobalKey,
      this.saveAmountGlobalKey,
      this.spendAmountValidator,
      this.saveAmountValidator});

  final bool loading;
  final bool existing;

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

  final Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WalletFormHeaderAtom(
          isExisting: existing,
        ),
        const SizedBox(height: 20),
        WalletFormInputMolecule(
          loading: loading,
          nameController: nameController,
          initialAmountController: initialAmountController,
          spendAmountController: spendAmountController,
          saveAmountController: saveAmountController,
          goalController: goalController,
          planController: planController,
          nameGlobalKey: nameGlobalKey,
          initialAmountGlobalKey: initialAmountGlobalKey,
          spendAmountGlobalKey: spendAmountGlobalKey,
          saveAmountGlobalKey: saveAmountGlobalKey,
          nameValidator: nameValidator,
          initialAmountValidator: initialAmountValidator,
          spendAmountValidator: spendAmountValidator,
          saveAmountValidator: saveAmountValidator,
        ),
        const SizedBox(height: 30),
        FormButtonAtom(
          isLoading: loading,
          label: 'Submit',
          onPressed: onSubmit,
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
