// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/utils/extensions.dart';
import 'package:test_app/view/calculate_screen.dart';
import 'package:test_app/view/home_screen.dart';
import 'package:test_app/view/profile_screen.dart';
import 'package:test_app/view/shipment_history.dart';
import 'package:test_app/widgets/custom_navbar.dart';

@RoutePage()
class NavigationBarViewScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NavigationBarViewScreenState();
}

class _NavigationBarViewScreenState extends ConsumerState<NavigationBarViewScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    HomeScreen(),
    CalculateScreen(),
    ShipmentHistoryScreen(),
   ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: _selectedIndex == 1 ||_selectedIndex == 2
          ? SizedBox.shrink()
          : CustomLineIndicatorBottomNavbar(
              selectedColor: AppColors.purple,
              unSelectedColor: Colors.grey,
              backgroundColor: Colors.white,
              currentIndex: _selectedIndex,
              customBottomBarItems: [
                CustomBottomBarItems(
                  label: locale.home,
                  icon: Icons.home,
                ),
                CustomBottomBarItems(
                  label: locale.calculate,
                  icon: Icons.calculate,
                ),
                CustomBottomBarItems(
                  label: context.locale.shipment,
                  icon: Icons.history,
                ),
                CustomBottomBarItems(
                  label: locale.profile,
                  icon: Icons.person,
                ),
              ],
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ).animate().slide(
              begin: const Offset(0, 1),
              end: Offset.zero,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn),
    );
  }
}
