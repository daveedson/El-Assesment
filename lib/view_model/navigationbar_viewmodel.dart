import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/view/calculate_screen.dart';
import 'package:test_app/view/home_screen.dart';
import 'package:test_app/view/profile_screen.dart';
import 'package:test_app/view/shipment_history.dart';

final navBarViewModelProvider = ChangeNotifierProvider.autoDispose<NavigationBarViewModel>((ref) {
  return NavigationBarViewModel();
});
class NavigationBarViewModel extends ChangeNotifier {
  int selectedIndex = 0;
  final List<Widget> widgetOptions = [
    const HomeScreen(),
    const CalculateScreen(),
    ShipmentHistoryScreen(),
    ProfileScreen()
  ];

  void onNavBarTapped(index) {
    selectedIndex = index;
    notifyListeners();
  }
}
