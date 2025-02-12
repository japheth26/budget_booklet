import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/color/custom_color.dart';

class TagItemAtom extends StatelessWidget {
  const TagItemAtom({
    super.key,
    this.isSelecting = false,
    this.isSelected = false,
    this.name,
    this.color,
    this.onTap,
    this.onSelect,
  });

  final bool isSelecting;
  final bool isSelected;
  final Color? color;
  final String? name;

  final void Function()? onTap;
  final void Function()? onSelect;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Container(
      decoration: BoxDecoration(
        color: colorTheme.white_blueGrey800WithOpacity3,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, -1), // Shadow towards the top
            blurRadius: 10, // Shadow blur
          ),
        ],
      ),
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: ListTile(
        onTap: isSelecting ? onSelect : onTap,
        leading: FaIcon(
          FontAwesomeIcons.solidSquare,
          color: color,
        ),
        title: Text(name ?? ''),
        trailing: !isSelecting
            ? const FaIcon(
                FontAwesomeIcons.chevronRight,
              )
            : Checkbox(
                value: isSelected,
                activeColor: CustomColor.primaryGreen,
                onChanged: (value) {
                  if (onSelect != null) {
                    onSelect!();
                  }
                },
              ),
      ),
    );
  }
}
