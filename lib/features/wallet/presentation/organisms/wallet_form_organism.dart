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
      this.onSubmit});

  final bool loading;
  final bool existing;

  final TextEditingController? nameController;
  final TextEditingController? initialAmountController;

  final GlobalKey<FormFieldState>? nameGlobalKey;
  final GlobalKey<FormFieldState>? initialAmountGlobalKey;

  final String? Function(String?)? nameValidator;
  final String? Function(String?)? initialAmountValidator;

  final Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height - kToolbarHeight - 120,
      ),
      child: Column(
        children: [
          WalletFormHeaderAtom(
            isExisting: existing,
          ),
          const SizedBox(height: 20),
          WalletFormInputMolecule(
            loading: loading,
            nameController: nameController,
            initialAmountController: initialAmountController,
            nameGlobalKey: nameGlobalKey,
            initialAmountGlobalKey: initialAmountGlobalKey,
            nameValidator: nameValidator,
            initialAmountValidator: initialAmountValidator,
          ),
          const Expanded(child: SizedBox()),
          FormButtonAtom(
            isLoading: loading,
            label: 'Submit',
            onPressed: onSubmit,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
