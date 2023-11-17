import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/core/routes.dart';
import 'package:test_app/gen/localizations.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/view_model/navigation_viewmodel.dart';

class TrackingComponent extends ConsumerWidget {
  const TrackingComponent({
    super.key,
    required this.locale,
  });

  final Localization locale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 250.0,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 10.0, right: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              locale.orderId,
              style: TextStyle(color: AppColors.grey2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "NEJ009243829712919209382897",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 40.0,
                    child: Image.asset("images/truck1.png"),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Divider(
                color: AppColors.grey2,
                thickness: 0.2,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 35.0,
                  width: 35.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("images/send_package.png"),
                ),
                const SizedBox(width: 5.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(locale.orderPrice,
                        style:
                            TextStyle(color: AppColors.grey2, fontSize: 13.0)),
                    const Text("£5000")
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.orderDate,
                      style: TextStyle(color: AppColors.grey2, fontSize: 13.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          const Text("21 / 11 /2023"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 35.0,
                  width: 35.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("images/receive.png"),
                ),
                const SizedBox(width: 5.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(locale.orderItem,
                        style:
                            TextStyle(color: AppColors.grey2, fontSize: 13.0)),
                    Text("Pairs of shoes")
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.orderQuantity,
                      style: TextStyle(color: AppColors.grey2, fontSize: 13.0),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text("5"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Divider(
                color: AppColors.grey2,
                thickness: 0.2,
              ),
            ),
            GestureDetector(
              onTap: () => ref
                  .read(navigationProvider)
                  .router
                  .pushNamed(Routes.oderDetails),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Track order", style: TextStyle(color: Colors.orange)),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.orange,
                    size: 22.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
