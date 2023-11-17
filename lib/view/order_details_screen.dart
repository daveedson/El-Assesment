import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/core/router.dart';
import 'package:test_app/model/order_status.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/view_model/order_details_viewmodel.dart';

@RoutePage()
class OrderdetailsScreen extends ConsumerStatefulWidget {
  const OrderdetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OrderdetailsScreenState();
}

class _OrderdetailsScreenState extends ConsumerState<OrderdetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final orderStatus = ref.watch(orderDetailsViewModelProvider).orderStatus;
    return Scaffold(
        backgroundColor: AppColors.grey,
        appBar: AppBar(
          backgroundColor: AppColors.primarycolor,
          automaticallyImplyLeading: true,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            color: Colors.white,
            onPressed: () {
              context.pushRoute(const NavigationBarViewRoute());
            },
          ).animate().slideX(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn),
          title: const Text(
            "Order Details",
            style: TextStyle(
              color: Colors.white,
            ),
          )
              .animate()
              .fadeIn(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn)
              .slideY(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
        ),
        body: Column(
          children: [
            Stepper(
              currentStep: orderStatus.orderIndex,
              controlsBuilder: (context, _) => Container(),
              steps: <Step>[
                Step(
                    title: const Text('Order Placed'),
                    content: const OrderContainer(
                      orderTitle: "Order Placed",
                      orderrBody: 'Waiting for vendor to accept your order',
                    ),
                    isActive: orderStatus == OrderStatus.orderPlaced),
                Step(
                    title: const Text('Order Accepted'),
                    content: const OrderContainer(
                      orderTitle: 'Order Accepted',
                      orderrBody:
                          'The vendor is preparing your order and the rider will pick up soon',
                    ),
                    isActive: orderStatus == OrderStatus.orderAccepted),
                Step(
                    title: const Text('Order pickup in progress'),
                    content: const OrderContainer(
                      orderTitle: 'Order in progress',
                      orderrBody:
                          'A rider is on the way to the vendor to pick up your order',
                    ),
                    isActive: orderStatus == OrderStatus.orderInProgress),
                Step(
                    title: const Text('Order on the way'),
                    content: const OrderContainer(
                      orderTitle: 'Order on the way',
                      orderrBody:
                          'A rider has picked up your order and is bringing it to you.',
                    ),
                    isActive: orderStatus == OrderStatus.orderOnTheWay),
                Step(
                    title: const Text('Order arrived'),
                    content: const OrderContainer(
                      orderTitle: 'Order arrived',
                      orderrBody: 'Dont keep the rider waiting',
                    ),
                    isActive: orderStatus == OrderStatus.orderArrived),
                Step(
                    title: const Text('Order delivered'),
                    content: const OrderContainer(
                      orderTitle: 'Order delivered',
                      orderrBody: 'Enjoy!',
                    ),
                    isActive: orderStatus == OrderStatus.orderDelivered),
              ],
            ).animate().slideX(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn),
          ],
        ));
  }
}

class OrderContainer extends StatelessWidget {
  const OrderContainer({
    super.key,
    required this.orderTitle,
    required this.orderrBody,
  });

  final String orderTitle;
  final String orderrBody;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 370.0,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    orderTitle,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Text("9:41AM"),
              ],
            ),
            const SizedBox(height: 15.0),
            Text(
              orderrBody,
              style: TextStyle(color: AppColors.grey2),
            )
          ],
        ),
      ),
    );
  }
}
