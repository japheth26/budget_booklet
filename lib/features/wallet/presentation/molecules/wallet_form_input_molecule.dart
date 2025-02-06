import 'package:flutter/material.dart';

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
  });
  final bool loading;
  final TextEditingController? nameController;
  final TextEditingController? initialAmountController;

  final GlobalKey<FormFieldState>? nameGlobalKey;
  final GlobalKey<FormFieldState>? initialAmountGlobalKey;

  final String? Function(String?)? nameValidator;
  final String? Function(String?)? initialAmountValidator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          TextFieldAtom(
            enabled: !loading,
            controller: nameController,
            globalKey: nameGlobalKey,
            validator: nameValidator,
            label: 'Name',
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
        ],
      ),
    );
  }
}
