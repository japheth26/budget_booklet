import 'package:flutter/material.dart';
import 'package:hani/features/tag/presentation/molecules/tag_list_molecule.dart';

import '../../../../core/sizes/app_sizes.dart';
import '../../../../core/widgets/icons/custom_icons.dart';
import '../templates/tag/tag_param.dart';

class TagListOrganism extends StatelessWidget {
  const TagListOrganism({
    super.key,
    this.tagItemParams,
    this.onRefresh,
  });

  final List<TagItemParam>? tagItemParams;
  final Future<void> Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh ?? () async {},
      child: Builder(builder: (context) {
        if ((tagItemParams ?? []).isEmpty) {
          return SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: SizedBox(
              height:
                  AppSizes.mediaQuery(context).height - kToolbarHeight - 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: CustomIcons.no_data,
                  ),
                  const SizedBox(height: 10),
                  const Text('No Tags Found'),
                ],
              ),
            ),
          );
        }

        return TagListMolecule(
          tagItemParams: tagItemParams,
        );
      }),
    );
  }
}
