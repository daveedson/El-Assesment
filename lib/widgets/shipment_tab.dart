import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:test_app/gen/localizations.dart';

class ShipmentTab extends StatelessWidget {
  const ShipmentTab({
    super.key,
    required this.locale,
    required this.length,
    required this.title,
    required this.color,
  });
  final String length;
  final String title;
  final Color color;
  final Localization locale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const SizedBox(width: 4.0),
        Container(
          height: 20.0,
          width: 30.0,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(12.0)),
          child: Text(
            length,
            textAlign: TextAlign.center,
          ),
        )
      ],
    ).animate().slide(
        begin: const Offset(1.0, 0.0),
        end: const Offset(0.0, 0.0),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn);
  }
}
