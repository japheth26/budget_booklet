import 'package:flutter/material.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:intl/intl.dart';

import '../../dependency_injection/injection.dart';

class DateRangePickerAtom extends StatelessWidget {
  const DateRangePickerAtom({
    super.key,
    this.label,
    this.initialTextFieldValue,
    this.initialDateTimeRange,
    this.iconData,
    this.globalKey,
    this.focusNode,
    this.semanticLabel,
    this.hintText,
    this.firstDate,
    this.lastDate,
    this.initialDate,
    this.controller,
    this.enabled = true,
    this.prefixIcon,
    this.validator,
    this.onDateTimeRangeSelected,
    this.isRequired = false,
  });

  final String? label;
  final String? initialTextFieldValue;
  final DateTimeRange? initialDateTimeRange;
  final IconData? iconData;
  final GlobalKey<FormFieldState>? globalKey;
  final FocusNode? focusNode;
  final String? semanticLabel;
  final String? hintText;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? initialDate;
  final TextEditingController? controller;
  final bool enabled;
  final Widget? prefixIcon;

  final String? Function(String?)? validator;
  final Function(DateTimeRange?)? onDateTimeRangeSelected;

  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);

    const double borderRadius = 15;

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: TextFormField(
        key: globalKey,
        focusNode: focusNode,
        controller: controller,
        initialValue: initialTextFieldValue,
        readOnly: true,
        onTap: () {
          _selectDate(context);
        },
        enabled: enabled,
        keyboardType: TextInputType.none,
        maxLines: 1,
        validator: validator,
        decoration: InputDecoration(
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

  Future<void> _selectDate(BuildContext context) async {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    final DateTime now = DateTime.now();
    final DateTimeRange? dateTimeRange = await showDateRangePicker(
      context: context,
      initialDateRange: initialDateTimeRange,
      firstDate: firstDate ?? DateTime(now.year - 300, 1, 1),
      lastDate: lastDate ?? DateTime(now.year + 1000, 1, 1),
    );

    if (globalKey?.currentState?.errorText != null &&
        globalKey!.currentState!.errorText!.isNotEmpty) {
      globalKey!.currentState!.reset();
    }

    if (controller != null) {
      controller!.text = dateTimeRange != null
          ? '${DateFormat('MMM dd, yyyy').format(dateTimeRange.start)} - ${DateFormat('MMM dd, yyyy').format(dateTimeRange.end)}'
          : '';
    }

    if (onDateTimeRangeSelected != null) {
      onDateTimeRangeSelected!(dateTimeRange);
    }
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
