import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/utils/extensions.dart';
import 'package:test_app/view_model/shipment_viewmodel.dart';
import 'package:test_app/widgets/shipments_container.dart';

@RoutePage()
class InProgressScreen extends ConsumerStatefulWidget {
  const InProgressScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InProgressScreenState();
}

class _InProgressScreenState extends ConsumerState<InProgressScreen> {
  @override
  Widget build(BuildContext context) {
    final shipmentData = ref.read(shipmentViewmodelProvider).shipmentData;
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
                shrinkWrap: true,
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
