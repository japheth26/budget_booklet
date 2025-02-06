import 'package:flutter/material.dart';

class DashboardPieChartDetailAtom extends StatelessWidget {
  const DashboardPieChartDetailAtom(
      {super.key, this.label = '', this.value = '', this.colorIndicator});

  final String label;
  final String value;
  final Color? colorIndicator;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 15,
              height: 15,
              color: colorIndicator,
            ),
            const SizedBox(width: 5),
            Flexible(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        Padding(padding: const EdgeInsets.only(left: 20), child: Text(value)),
        const SizedBox(height: 10),
      ],
    );
  }
}
