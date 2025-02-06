import 'package:flutter/material.dart';
import 'package:hani/features/auth/presentation/atoms/wallet_card_atom.dart';

import '../templates/home/home_params.dart';

class HomeListMolecule extends StatelessWidget {
  const HomeListMolecule({
    super.key,
    this.homeItemParams,
  });

  final List<HomeItemParam>? homeItemParams;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SizedBox(height: 10),
      ...(homeItemParams ?? []).map((e) {
        return WalletCardAtom(
          name: e.name,
          balance: e.balance,
          walletNumber: e.walletNumber,
          onTap: e.onTap,
          pieChartDataList: e.pieChartDataList,
        );
      }),
    ]);
  }
}
