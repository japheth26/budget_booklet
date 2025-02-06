import 'package:flutter/material.dart';

import '../../../../core/widgets/icons/custom_icons.dart';

class EmptyWalletAtom extends StatelessWidget {
  const EmptyWalletAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          child: CustomIcons.no_data,
        ),
        const SizedBox(height: 10),
        const Text('No wallet found'),
        const SizedBox(height: 80),
      ],
    );
  }
}
