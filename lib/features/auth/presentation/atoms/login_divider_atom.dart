import 'package:flutter/material.dart';

class LoginDividerAtom extends StatelessWidget {
  const LoginDividerAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(child: Divider()),
          SizedBox(width: 10),
          Text('or'),
          SizedBox(width: 10),
          Expanded(child: Divider()),
        ],
      ),
    );
  }
}
