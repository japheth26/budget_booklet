import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';

import '../../color/custom_color.dart';
import '../../sizes/app_sizes.dart';

class IconSelectorAtom extends StatefulWidget {
  const IconSelectorAtom({
    super.key,
    required this.codePoint,
    this.onSelect,
  });

  final int codePoint;
  final void Function(int)? onSelect;

  @override
  State<IconSelectorAtom> createState() => _IconSelectorAtomState();
}

class _IconSelectorAtomState extends State<IconSelectorAtom> {
  late int _codePoint;

  @override
  void initState() {
    super.initState();
    _codePoint = widget.codePoint;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: CustomColor.blueGrey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: CustomColor.blueGrey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              IconData(_codePoint, fontFamily: 'MaterialIcons'),
              color: CustomColor.blueGrey,
              size: 50,
            ),
          ),
          Expanded(
              child: GestureDetector(
            onTap: () {
              _handleSelectIcon(context);
            },
            child: Container(
              height: 100,
              alignment: Alignment.center,
              child: const Text(
                'Tap to select icon',
                style: TextStyle(
                  color: CustomColor.royalBlue,
                  fontSize: AppSizes.h_16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }

  Future<void> _handleSelectIcon(BuildContext context) async {
    final IconData? iconData = await showIconPicker(context);

    if (iconData != null) {
      setState(() => _codePoint = iconData.codePoint);
    }

    if (iconData != null && widget.onSelect != null) {
      widget.onSelect!(iconData.codePoint);
    }
  }
}
