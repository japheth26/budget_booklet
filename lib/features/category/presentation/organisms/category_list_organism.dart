import 'package:flutter/material.dart';
import 'package:hani/features/category/presentation/molecules/category_list_molecule.dart';

import '../../../../core/sizes/app_sizes.dart';
import '../../../../core/widgets/icons/custom_icons.dart';
import '../templates/category/category_param.dart';

class CategoryListOrganism extends StatelessWidget {
  const CategoryListOrganism({
    super.key,
    this.categoryItemParams,
    this.onRefresh,
  });

  final List<CategoryItemParam>? categoryItemParams;
  final Future<void> Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh ?? () async {},
      child: Builder(builder: (context) {
        if ((categoryItemParams ?? []).isEmpty) {
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

        return CategoryListMolecule(
          params: categoryItemParams,
        );
      }),
    );
  }
}
