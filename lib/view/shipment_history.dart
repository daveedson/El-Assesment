import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/core/router.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/utils/extensions.dart';
import 'package:test_app/view/inprogrerss_screen.dart';
import 'package:test_app/view/shipments_screen.dart';
import 'package:test_app/view_model/shipment_viewmodel.dart';
import 'package:test_app/widgets/shipment_tab.dart';

@RoutePage()
class ShipmentHistoryScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ShipmentHistoryScreenState();
}

class _ShipmentHistoryScreenState extends ConsumerState<ShipmentHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final shipmentViewModel = ref.read(shipmentViewmodelProvider);
    final locale = context.locale;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.purple,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            color: Colors.white,
            onPressed: () {
              context.pushRoute(const NavigationBarViewRoute());
            },
          ).animate().slideX(
              duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
          bottom: TabBar(
            padding: EdgeInsets.zero,
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor: AppColors.orange,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: AppColors.grey2,
            labelColor: Colors.white,
            onTap: (int index) {
              ref.watch(shipmentViewmodelProvider).updateTab(index);
            },
            tabs: [
              ShipmentTab(
                locale: locale,
                length: "12",
                title: locale.all,
                color: shipmentViewModel.currentIndex == 0
                    ? AppColors.orange
                    : AppColors.darkpurple,
              ),
              ShipmentTab(
                locale: locale,
                length: "5",
                title: locale.completed,
                color: shipmentViewModel.currentIndex == 1
                    ? AppColors.orange
                    : AppColors.darkpurple,
              ),
              ShipmentTab(
                locale: locale,
                length: "3",
                title: locale.inProgress,
                color: shipmentViewModel.currentIndex == 2
                    ? AppColors.orange
                    : AppColors.darkpurple,
              ),
              ShipmentTab(
                locale: locale,
                length: "4",
                title: locale.pendingorder,
                color: shipmentViewModel.currentIndex == 3
                    ? AppColors.orange
                    : AppColors.darkpurple,
              ),
              Tab(
                text: locale.cancelled,
              ),
            ],
          ),
          title: Text(
            locale.shipmenthistory,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
              .animate()
              .fadeIn(
                  duration: const Duration(milliseconds: 500), curve: Curves.easeIn)
              .slideY(
                  duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
        ),
        body: const TabBarView(
          children: [
            ShipmentScreen(),
            Scaffold(),
            InProgressScreen(),
            Scaffold(),
            Scaffold(),
          ],
        ),
      ),
    );
  }
}
