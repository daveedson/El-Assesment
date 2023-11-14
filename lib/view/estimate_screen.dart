import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/core/router.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/utils/extensions.dart';
import 'package:test_app/view/calculate_screen.dart';

@RoutePage()
class EstimateScreen extends ConsumerStatefulWidget {
  const EstimateScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EstimateScreenState();
}

class _EstimateScreenState extends ConsumerState<EstimateScreen> {
  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 90.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  locale.movemate,
                  style: TextStyle(
                      color: AppColors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                const SizedBox(width: 5.0),
                SizedBox(
                    height: 40.0,
                    width: 40.0,
                    child: Image.asset(
                      "images/cargo.png",
                      color: AppColors.orange,
                    ))
              ],
            )
                .animate()
                .fadeIn(
                    duration: const Duration(seconds: 1), curve: Curves.easeIn)
                .slideY(
                    duration: const Duration(seconds: 1), curve: Curves.easeIn),
            const SizedBox(height: 50.0),
            SizedBox(
                    height: 220.0,
                    width: 220.0,
                    child: Image.asset('images/cardBoard.png'))
                .animate()
                .scaleXY(
                    curve: Curves.easeIn, duration: const Duration(seconds: 1)),
            const SizedBox(height: 40.0),
            Text(
              locale.totalestimatedamount,
              style:
                  const TextStyle(fontSize: 21.0, fontWeight: FontWeight.w400),
            )
                .animate()
                .fadeIn(
                    duration: const Duration(seconds: 1), curve: Curves.easeIn)
                .slide(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeIn),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "£ 1459 USD",
              style: TextStyle(
                  color: AppColors.green,
                  fontWeight: FontWeight.w300,
                  fontSize: 20.0),
            )
                .animate()
                .fadeIn(
                    duration: const Duration(seconds: 1), curve: Curves.easeIn)
                .slide(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeIn),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 300.0,
              child: Text(
                locale.thisamountisestimatedthiswill,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.grey2),
              ),
            )
                .animate()
                .fadeIn(
                    duration: const Duration(seconds: 1), curve: Curves.easeIn)
                .slide(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeIn),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: ReuseableButton(
                  onPressed: () {
                    context.router.pushAndPopUntil(const NavigationBarViewRoute(),
                        predicate: (_) => false);
                  },
                  title: "Back to home"),
            )
                .animate()
                .fadeIn(
                    duration: const Duration(seconds: 1), curve: Curves.easeIn)
                .slide(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeIn),
          ],
        ),
      ),
    );
  }
}
