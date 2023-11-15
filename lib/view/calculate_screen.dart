// ignore_for_file: sized_box_for_whitespace

import 'package:auto_route/auto_route.dart';
import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/core/router.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/utils/extensions.dart';
import 'package:test_app/view_model/calculate_viewmodel.dart';
import 'package:test_app/widgets/reuseable_textfield.dart';

@RoutePage()
class CalculateScreen extends ConsumerStatefulWidget {
  const CalculateScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CalculateScreenState();
}

class _CalculateScreenState extends ConsumerState<CalculateScreen> {
  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        automaticallyImplyLeading: true,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
          onPressed: () {
            context.pushRoute(const NavigationBarViewRoute());
          },
        ).animate().slideX(
            duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
        title: Text(
          locale.calculate,
          style: const TextStyle(
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
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locale.destination,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor,
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      ReuseableTextField(
                        locale: locale,
                        hint: locale.senderLocation,
                        iconimage: Icons.drive_folder_upload,
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
                      const SizedBox(height: 10.0),
                      ReuseableTextField(
                        locale: locale,
                        hint: locale.receiverLocation,
                        iconimage: Icons.drive_folder_upload,
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
                      const SizedBox(height: 10.0),
                      ReuseableTextField(
                        locale: locale,
                        hint: locale.senderLocation,
                        iconimage: Icons.hourglass_bottom,
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
                    ],
                  ),
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
              const SizedBox(height: 30.0),
              Text(
                locale.packaging,
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
              Text(
                locale.whatareyousending,
                style: TextStyle(
                  fontSize: 14.0,
                  color: AppColors.grey2,
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
              const SizedBox(height: 30.0),
              Container(
                height: 60.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 12.0, bottom: 12.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 35.0,
                        width: 35.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          "images/send_package.png",
                          color: Colors.grey,
                        ),
                      ),
                      const VerticalDivider(),
                      Text(
                        locale.box,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.grey,
                      ),
                    ],
                  ),
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
              const SizedBox(height: 30.0),
              Text(
                locale.categories,
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
              Text(
                locale.whatareyousending,
                style: TextStyle(
                  fontSize: 14.0,
                  color: AppColors.grey2,
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
              ChipList(
                listOfChipNames: ref.read(calcuteViewModelProvider).data,
                supportsMultiSelect: true,
                activeBgColorList: [Colors.black],
                inactiveBgColorList: [Colors.white],
                activeTextColorList: [Colors.white],
                inactiveTextColorList: [AppColors.textColor],
                listOfChipIndicesCurrentlySeclected: [],
              ).animate().slide(
                  begin: const Offset(1.0, 0.0),
                  end: const Offset(0.0, 0.0),
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
              ChipList(
                listOfChipNames: ref.read(calcuteViewModelProvider).items,
                supportsMultiSelect: true,
                activeBgColorList: [Colors.black],
                inactiveBgColorList: [Colors.white],
                activeTextColorList: [Colors.white],
                inactiveTextColorList: [AppColors.textColor],
                listOfChipIndicesCurrentlySeclected: [],
              ).animate().slide(
                  begin: const Offset(1.0, 0.0),
                  end: const Offset(0.0, 0.0),
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
              const SizedBox(height: 20.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: ReuseableButton(
                  onPressed: () {
                  },
                  title: 'Calculate',
                ),
              ).animate().slide(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
            ],
          ),
        ),
      ),
    );
  }
}

class ReuseableButton extends StatelessWidget {
  const ReuseableButton({
    super.key,
    required this.onPressed,
    required this.title, 
    this.color,
  });
  final VoidCallback onPressed;
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(), backgroundColor: color ??AppColors.orange),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
