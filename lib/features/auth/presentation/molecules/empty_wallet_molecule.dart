import 'package:flutter/material.dart';
import 'package:hani/features/auth/presentation/atoms/empty_wallet_atom.dart';

import '../../../../core/sizes/app_sizes.dart';
import '../atoms/loading_empty_wallet_atom.dart';

class EmptyWalletMolecule extends StatelessWidget {
  const EmptyWalletMolecule({super.key, this.loading = false});

  final bool loading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppSizes.mediaQuery(context).height - kToolbarHeight - 100,
        child: !loading ? const EmptyWalletAtom() : const LoadingWalletAtom());
  }
}
