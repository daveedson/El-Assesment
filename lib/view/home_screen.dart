// ignore_for_file: sized_box_for_whitespace

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/utils/extensions.dart';
import 'package:test_app/view_model/home_viewmodel.dart';
import 'package:test_app/widgets/app_bar_header.dart';
import 'package:test_app/widgets/available_vehicle_component.dart';
import 'package:test_app/widgets/tracking_components.dart';
@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    final vechicle = ref.read(homeViewModelProvider).vechicle;
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarHeader(locale: locale)
                .animate()
                .fadeIn(
                    duration: const Duration(milliseconds: 500), curve: Curves.easeIn)
                .slideY(
                    duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    locale.tracking,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
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
                  const SizedBox(height: 20.0),
                  TrackingComponent(locale: locale)
                      .animate()
                      .fadeIn(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn)
                      .slide(
                          begin: const Offset(0, 1),
                          end: Offset.zero,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(locale.availablevehicles,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor,
                          ))
                      .animate()
                      .fadeIn(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn)
                      .slide(
                          begin: const Offset(0, 1),
                          end: Offset.zero,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                  const SizedBox(height: 10.0),
                  const _AvailableVehicleComponent()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AvailableVehicleComponent extends ConsumerWidget {
  const _AvailableVehicleComponent({super.key});

  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = context.locale;
      final vechicle = ref.read(homeViewModelProvider).vechicle;
    return Container(
      height: 210.0,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: vechicle.length,
        itemBuilder: ((context, index) => AvailableVehicleComponent(
              locale: locale,
              image: vechicle[index].image,
              title: vechicle[index].title,
              subtitle: vechicle[index].subtitle,
            )),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 15.0,
          );
        },
      ),
    ).animate().slide(
        begin: const Offset(1.0, 0.0),
        end: const Offset(0.0, 0.0),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn);
  }
}
