import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/custom_color.dart';
import 'package:hani/features/category/presentation/atoms/tag_pill_atom.dart';

import '../templates/category/category_param.dart';

class CategoryItemAtom extends StatelessWidget {
  const CategoryItemAtom({
    super.key,
    this.color,
    this.iconData,
    this.label,
    this.categoryTags,
    this.onTap,
  });

  final Color? color;
  final IconData? iconData;
  final String? label;
  final List<CategoryTagParam>? categoryTags;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, -1), // Shadow towards the top
                blurRadius: 10, // Shadow blur
              ),
              BoxShadow(
                color: color ?? Colors.black,
                offset: const Offset(-8, 0), // Shadow towards the top
                blurRadius: 0, // Shadow blur
              ),
            ],
          ),
          margin: const EdgeInsets.fromLTRB(15, 0, 10, 10),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: FaIcon(
                      iconData,
                      color: CustomColor.blueGrey,
                    ),
                  ),
                  Expanded(child: Text(label ?? '')),
                  const FaIcon(FontAwesomeIcons.chevronRight)
                ],
              ),
              Visibility(
                visible: (categoryTags ?? []).isNotEmpty,
                child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const Divider()),
              ),
              Wrap(
                runSpacing: 10,
                spacing: 5,
                alignment: WrapAlignment.start,
                children: (categoryTags ?? []).map((e) {
                  return TagPillAtom(
                    color: e.color,
                    label: e.label,
                  );
                }).toList(),
              ),
            ],
          )),
    );
  }
}
