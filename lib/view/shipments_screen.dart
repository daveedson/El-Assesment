import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/utils/extensions.dart';
import 'package:test_app/utils/shipments_model.dart';
import 'package:test_app/widgets/shipments_container.dart';

@RoutePage()
class ShipmentScreen extends ConsumerStatefulWidget {
  const ShipmentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ShipmentScreenState();
}

class _ShipmentScreenState extends ConsumerState<ShipmentScreen> {
  final List<ShipementsModel> shipmentData = [
    ShipementsModel(
      progressText: "In-Progress",
      textColor: AppColors.green,
      price: '1400',
      progressIcon: Icon(
        Icons.autorenew_outlined,
        color: AppColors.green,
      ),
    ),
    ShipementsModel(
      progressText: "Completed",
      textColor: AppColors.green,
      price: '2400',
      progressIcon: Icon(
        Icons.autorenew_outlined,
        color: AppColors.green,
      ),
    ),
    ShipementsModel(
      progressText: "Pending",
      textColor: AppColors.orange,
      price: '300',
      progressIcon: Icon(
        Icons.av_timer_outlined,
        color: AppColors.orange,
      ),
    ),
    ShipementsModel(
      progressText: "In-Progress",
      textColor: AppColors.green,
      price: '1500',
      progressIcon: Icon(
        Icons.restart_alt,
        color: AppColors.green,
      ),
    ),
    ShipementsModel(
      progressText: "Loading",
      textColor: AppColors.blue,
      price: '300',
      progressIcon: Icon(
        Icons.av_timer_outlined,
        color: AppColors.blue,
      ),
    ),
    ShipementsModel(
      progressText: "In-Progress",
      textColor: AppColors.green,
      price: '1400',
      progressIcon: Icon(
        Icons.restart_alt,
        color: AppColors.green,
      ),
    ),
    ShipementsModel(
      progressText: "Loading",
      textColor: AppColors.blue,
      price: '300',
      progressIcon: Icon(
        Icons.av_timer_outlined,
        color: AppColors.blue,
      ),
    ),
    ShipementsModel(
      progressText: "In-Progress",
      textColor: AppColors.green,
      price: '1400',
      progressIcon: Icon(
        Icons.restart_alt,
        color: AppColors.green,
      ),
    ),
    ShipementsModel(
      progressText: "Loading",
      textColor: AppColors.blue,
      price: '300',
      progressIcon: Icon(
        Icons.av_timer_outlined,
        color: AppColors.blue,
      ),
    ),
    ShipementsModel(
      progressText: "In-Progress",
      textColor: AppColors.green,
      price: '600',
      progressIcon: Icon(
        Icons.restart_alt,
        color: AppColors.green,
      ),
    ),
    ShipementsModel(
      progressText: "In-Progress",
      textColor: AppColors.green,
      price: '800',
      progressIcon: Icon(
        Icons.restart_alt,
        color: AppColors.green,
      ),
    ),
    ShipementsModel(
      progressText: "Pending",
      textColor: AppColors.orange,
      price: '3000',
      progressIcon: Icon(
        Icons.av_timer_outlined,
        color: AppColors.orange,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              locale.shipments,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView.separated(
                itemCount: shipmentData.length,
                itemBuilder: ((context, index) => ShipmentContainer(
                      locale: locale,
                      progressText: shipmentData[index].progressText,
                      textColor: shipmentData[index].textColor,
                      price: shipmentData[index].price,
                      progressIcon: shipmentData[index].progressIcon,
                    ).animate().fadeIn(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn)),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 15.0,
                  );
                },
              )
                  .animate()
                  .fadeIn(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn)
                  .slide(
                      begin: const Offset(0, 1),
                      end: Offset.zero,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn),
            ),
          ],
        ),
      ),
    );
  }
}
