import 'package:flutter/material.dart';

class LoadingWalletAtom extends StatelessWidget {
  const LoadingWalletAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
