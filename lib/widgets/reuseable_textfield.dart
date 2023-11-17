import 'package:flutter/material.dart';
import 'package:test_app/gen/localizations.dart';
import 'package:test_app/ui/app_colors.dart';

class ReuseableTextField extends StatelessWidget {
  const ReuseableTextField({
    super.key,
    required this.locale,
    required this.hint,
    required this.iconimage,
  });
  final String hint;
  final IconData iconimage;
  final Localization locale;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 14.0),
            focusedBorder: InputBorder.none,
            prefixIcon: Icon(
              iconimage,
              color: AppColors.grey2,
            ),
            filled: true,
            fillColor: AppColors.grey,
            border: InputBorder.none),
      ),
    );
  }
}
