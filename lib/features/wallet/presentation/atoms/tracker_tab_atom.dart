import 'package:flutter/material.dart';

class TrackerTabAtom extends StatelessWidget {
  const TrackerTabAtom({super.key, this.label});

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3.0),
      child: Text(label ?? ''),
    );
  }
}
