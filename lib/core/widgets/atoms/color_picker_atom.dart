import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';

class ColorPickerAtom extends StatelessWidget {
  const ColorPickerAtom({
    super.key,
    this.initialColor,
    this.onColorChanged,
  });

  final Color? initialColor;
  final void Function(Color)? onColorChanged;

  @override
  Widget build(BuildContext context) {
    return ColorPicker(
      color: initialColor ?? Colors.blue,
      onColorChanged: onColorChanged ?? (Color color) {},
      width: 44,
      height: 44,
      borderRadius: 22,
      heading: Text(
        'Select color',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subheading: Text(
        'Select color shade',
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
