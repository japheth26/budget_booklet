import 'package:flutter/material.dart';
import 'package:hani/features/auth/presentation/molecules/empty_wallet_molecule.dart';
import 'package:hani/features/auth/presentation/molecules/home_list_molecule.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../templates/home/home_params.dart';

class HomeDataListOrganism extends StatelessWidget {
  const HomeDataListOrganism(
      {super.key, this.loading = false, this.homeItemParams, this.onRefresh});

  final bool loading;
  final List<HomeItemParam>? homeItemParams;
  final Future<void> Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: loading,
      child: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: onRefresh ?? () async {},
              child: Builder(builder: (context) {
                if ((homeItemParams ?? []).isEmpty) {
                  return SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: EmptyWalletMolecule(
                      loading: loading,
                    ),
                  );
                }

                return HomeListMolecule(
                  homeItemParams: homeItemParams,
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
