import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/atoms/text_field_atom.dart';

class PasswordFieldAtom extends StatelessWidget {
  const PasswordFieldAtom({
    super.key,
    this.enabled = true,
    this.label,
    this.controller,
    this.globalKey,
    this.validator,
    this.obscureText = true,
    this.isRequired = true,
    this.onShowPassword,
  });

  final bool enabled;
  final String? label;
  final TextEditingController? controller;
  final GlobalKey<FormFieldState>? globalKey;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool isRequired;
  final void Function()? onShowPassword;

  @override
  Widget build(BuildContext context) {
    return TextFieldAtom(
      enabled: enabled,
      label: label,
      isRequired: isRequired,
      controller: controller,
      globalKey: globalKey,
      validator: validator,
      obscureText: obscureText,
      suffixIcon: IconButton(
        icon: FaIcon(
            obscureText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash),
        onPressed: onShowPassword,
      ),
    );
  }
}
