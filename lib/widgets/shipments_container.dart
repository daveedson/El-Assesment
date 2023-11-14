import 'package:flutter/material.dart';
import 'package:test_app/gen/moniepoint_test_localizations.dart';
import 'package:test_app/ui/app_colors.dart';

class ShipmentContainer extends StatelessWidget {
  const ShipmentContainer({
    super.key,
    required this.locale,
    required this.progressText,
    required this.textColor,
    required this.price,
    required this.progressIcon,
  });

  final MoniepointLocalization locale;
  final String progressText;
  final Color textColor;
  final String price;
  final Widget progressIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Container(
              height: 30.0,
              width: 115.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  progressIcon,
                  Text(
                    progressText,
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              locale.arrivingtoday,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
            Row(
              children: [
                SizedBox(
                    width: 250.0,
                    child: Text(
                      locale.deliverydetails,
                      style: TextStyle(
                          color: AppColors.grey2, fontWeight: FontWeight.w700),
                    )),
                const Spacer(),
                SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Image.asset('images/cardBoard.png'))
              ],
            ),
            Row(
              children: [
                Text(
                  '£$price',
                  style: TextStyle(
                      color: AppColors.purple,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 10.0),
                Container(
                  height: 5.0,
                  width: 5.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.grey2),
                ),
                const SizedBox(width: 7.0),
                Text(locale.date)
              ],
            )
          ],
        ),
      ),
    );
  }
}
