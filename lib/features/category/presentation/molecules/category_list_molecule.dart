import 'package:flutter/material.dart';
import 'package:hani/features/category/presentation/atoms/category_item_atom.dart';

import '../templates/category/category_param.dart';

class CategoryListMolecule extends StatelessWidget {
  const CategoryListMolecule({
    super.key,
    this.params,
  });

  final List<CategoryItemParam>? params;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: (params ?? []).map((e) {
        return CategoryItemAtom(
          label: e.label,
          color: e.color,
          iconData: e.iconData,
          categoryTags: e.categoryTags,
          onTap: e.onTap,
        );
      }).toList(),
    );
  }
}
