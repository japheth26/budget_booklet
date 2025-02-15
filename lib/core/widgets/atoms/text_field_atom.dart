import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/dependency_injection/injection.dart';

class TextFieldAtom extends StatelessWidget {
  const TextFieldAtom({
    super.key,
    this.globalKey,
    this.label,
    this.initialValue,
    this.obscureText,
    this.enabled,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.isRequired = false,
  });

  final GlobalKey<FormFieldState>? globalKey;
  final String? label;
  final String? initialValue;
  final bool? obscureText;
  final bool? enabled;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function()? onTap;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    const double borderRadius = 15;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        key: globalKey,
        focusNode: focusNode,
        controller: controller,
        initialValue: initialValue,
        obscureText: obscureText ?? false,
        onChanged: (value) {
          if (onChanged != null) {
            onChanged!(value);
          }

          if (globalKey?.currentState?.errorText != null &&
              globalKey!.currentState!.errorText!.isNotEmpty) {
            globalKey!.currentState!.validate();
          }
        },
        validator: validator,
        cursorColor: colorTheme.black_white,
        enabled: enabled,
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        onTap: onTap,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          prefixIconColor: colorTheme.black_white,
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
