import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/dependency_injection/injection.dart';

class MultiTextFieldAtom extends StatelessWidget {
  const MultiTextFieldAtom({
    super.key,
    this.label,
    this.initialValue,
    this.enabled = true,
    this.controller,
    this.onChanged,
    this.validator,
    this.isRequired = false,
  });

  final String? label;
  final String? initialValue;
  final bool enabled;
  final TextEditingController? controller;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    const double borderRadius = 15;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: TextFormField(
          initialValue: initialValue,
          controller: controller,
          onChanged: onChanged,
          validator: validator,
          keyboardType: TextInputType.multiline,
          maxLines: 100,
          enabled: enabled,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            label: _label(colorTheme),
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: colorTheme.primaryGreen_white,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: colorTheme.black_white,
                width: 1,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.0,
              ),
            ),
            floatingLabelStyle: TextStyle(
              color: colorTheme.black_white,
            ),
          ),
        ),
      ),
    );
  }

  _label(ColorTheme colorTheme) {
    if (label == null) return null;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label!,
          style: TextStyle(
            color: colorTheme.black_white,
          ),
        ),
        Visibility(
          visible: isRequired,
          child: const Text(
            "*",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        Visibility(
          visible: !isRequired,
          child: Text(
            "(optional)",
            style: TextStyle(
              color: colorTheme.black_white,
            ),
          ),
        ),
      ],
    );
  }
}
