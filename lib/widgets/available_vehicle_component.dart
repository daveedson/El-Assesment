// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:test_app/gen/moniepoint_test_localizations.dart';
import 'package:test_app/ui/app_colors.dart';

class AvailableVehicleComponent extends StatelessWidget {
  const AvailableVehicleComponent({
    super.key,
    required this.locale, required this.image, required this.title, required this.subtitle,
  });

  final MoniepointLocalization locale;
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 175.0,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
             title,
              style: TextStyle(color: AppColors.textColor),
            ),
            Text(subtitle,
                style: TextStyle(color: AppColors.grey2, fontSize: 13.0)),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 120.0,
                  width: 120.0,
                  child: Image.asset(image)),
            )
          ],
        ),
      ),
    );
  }
}