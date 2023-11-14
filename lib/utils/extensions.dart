import 'package:flutter/material.dart';
import 'package:test_app/gen/moniepoint_test_localizations_en.dart';

import '../gen/moniepoint_test_localizations.dart';


extension DashboardLocalization on BuildContext {
  MoniepointLocalization get locale =>
      MoniepointLocalization.of(this) ?? MoniepointLocalizationEn('en');
}