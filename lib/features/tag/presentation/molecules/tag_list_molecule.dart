import 'package:flutter/material.dart';
import 'package:hani/features/tag/presentation/atoms/tag_item_atom.dart';

import '../templates/tag/tag_param.dart';

class TagListMolecule extends StatelessWidget {
  const TagListMolecule({
    super.key,
    this.tagItemParams,
  });

  final List<TagItemParam>? tagItemParams;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: (tagItemParams ?? []).map((e) {
        return TagItemAtom(
          name: e.name,
          color: e.color,
          onTap: e.onTap,
        );
      }).toList(),
    );
  }
}
