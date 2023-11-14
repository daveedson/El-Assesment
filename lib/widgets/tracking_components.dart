import 'package:flutter/material.dart';
import 'package:test_app/gen/moniepoint_test_localizations.dart';
import 'package:test_app/ui/app_colors.dart';

class TrackingComponent extends StatelessWidget {
  const TrackingComponent({
    super.key,
    required this.locale,
  });

  final MoniepointLocalization locale;

  @override
  Widget build(BuildContext context) {
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
              locale.shipmentNumber,
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
                    Text(locale.sender,
                        style:
                            TextStyle(color: AppColors.grey2, fontSize: 13.0)),
                    Text(locale.address2)
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.time,
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
                          const Text("2day- 3days"),
                        ],
                      ),
                    )
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
                    Text(locale.receiver,
                        style:
                            TextStyle(color: AppColors.grey2, fontSize: 13.0)),
                    Text(locale.address1)
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.status,
                      style: TextStyle(color: AppColors.grey2, fontSize: 13.0),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text("Waiting to Collect"),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.orange,
                ),
                Text("Add Stop", style: TextStyle(color: Colors.orange)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
