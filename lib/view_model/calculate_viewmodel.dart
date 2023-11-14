import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final calcuteViewModelProvider = Provider<CalculateViewModel>((ref) {
  return CalculateViewModel();
});
class CalculateViewModel extends ChangeNotifier {
final List<String> data = [
    "Documents",
    'Glass',
    'Liquid',
    'Food',
  ];

  final List<String> items = ['Electronic', 'Product', 'Others'];
}
