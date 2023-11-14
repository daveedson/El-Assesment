import 'package:flutter/material.dart';
import 'package:test_app/gen/moniepoint_test_localizations.dart';
import 'package:test_app/ui/app_colors.dart';

class AppBarHeader extends StatelessWidget {
  const AppBarHeader({
    super.key,
    required this.locale,
  });

  final MoniepointLocalization locale;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      width: double.infinity,
      color: AppColors.purple,
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 35.0),
            child: Row(
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: const Icon(Icons.person_2),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.navigation,
                          color: Colors.white,
                          size: 18.0,
                        ),
                        Text(
                          locale.location,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          locale.address,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w800),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Center(
                    child: Icon(Icons.notifications_none_outlined),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: locale.receiptNumber,
                hintStyle: const TextStyle(fontSize: 14.0),
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.purple,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.orange),
                    child: const Center(
                      child: Icon(
                        Icons.receipt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}