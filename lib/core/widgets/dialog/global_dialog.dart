import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/color/color_theme.dart';
import 'package:hani/core/color/custom_color.dart';

import '../atoms/form_button_atom.dart';

class GlobalDialog {
  static bool isShowing = false;

  static Future<void> showErrorDialog(BuildContext context,
      {String message = 'Something went wrong!'}) async {
    if (isShowing) return;

    isShowing = true;

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(20),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          title: Column(
            children: [
              const FaIcon(
                FontAwesomeIcons.circleXmark,
                color: Colors.red,
                size: 50,
              ),
              const SizedBox(height: 20),
              Text(
                message,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            FormButtonAtom(
              label: 'okay',
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );

    isShowing = false;
  }

  static Future<void> showSuccessDialog(BuildContext context,
      {String message = 'Success!'}) async {
    if (isShowing) return;
    isShowing = true;
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(20),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          title: Column(
            children: [
              const FaIcon(
                FontAwesomeIcons.circleCheck,
                color: CustomColor.primaryGreen,
                size: 50,
              ),
              const SizedBox(height: 20),
              Text(
                message,
                style: const TextStyle(
                  color: CustomColor.primaryGreen,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            FormButtonAtom(
              label: 'okay',
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );

    isShowing = false;
  }

  static Future<bool?> showVerificationDialog(BuildContext context,
      {String message = 'Do you like to proceed?'}) async {
    final ColorTheme colorTheme = ColorThemeUtils.getColors(context);
    if (isShowing) return false;
    isShowing = true;
    final result = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(20),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          title: Column(
            children: [
              const FaIcon(
                FontAwesomeIcons.circleQuestion,
                color: CustomColor.primaryGreen,
                size: 50,
              ),
              const SizedBox(height: 20),
              Text(
                message,
                style: TextStyle(
                  color: colorTheme.black_white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            FormButtonAtom(
              label: 'Yes',
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            const SizedBox(height: 10),
            FormButtonAtom(
              label: 'No',
              backgroundColor: Colors.white,
              textColor: Colors.red,
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            )
          ],
        );
      },
    );
    isShowing = false;
    return result;
  }
}
