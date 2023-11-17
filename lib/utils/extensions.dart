import 'package:flutter/material.dart';
import 'package:test_app/gen/localizations.dart';
import 'package:test_app/gen/localizations_en.dart';




extension DashboardLocalization on BuildContext {
  Localization get locale => Localization.of(this) ?? LocalizationEn('en');
}
