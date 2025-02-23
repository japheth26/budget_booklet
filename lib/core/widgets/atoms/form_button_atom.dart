import 'package:flutter/material.dart';
import 'package:hani/core/color/custom_color.dart';

class FormButtonAtom extends StatelessWidget {
  const FormButtonAtom({
    super.key,
    this.label = '',
    this.textColor = Colors.white,
    this.backgroundColor,
    this.shadowColor,
    this.prefixIcon,
    this.loadingColor = Colors.white,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  });

  final String label;
  final Color textColor;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final Color? shadowColor;
  final Color loadingColor;
  final Function()? onPressed;

  final bool isLoading;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 10;
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color:
            enabled ? backgroundColor ?? CustomColor.primaryGreen : Colors.grey,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.black54,
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: isLoading ? _loading : _label,
      ),
    );
  }

  Widget get _label => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (prefixIcon != null) prefixIcon!,
          const SizedBox(width: 5),
          Text(
            label,
            style: TextStyle(
              fontSize: 18,
              color: textColor,
            ),
          ),
          const SizedBox(width: 5),
        ],
      );

  Widget get _loading => CircularProgressIndicator(
        color: loadingColor,
      );
}
