import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/view/calculate_screen.dart';
import 'package:test_app/view_model/signin_viewmodel.dart';

@RoutePage()
class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to Eden, lets get you started...",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor,
                  )) .animate()
                .fadeIn(
                    duration: const Duration(milliseconds: 500), curve: Curves.easeIn)
                .slideY(
                    duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
              const SizedBox(height: 10.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: ReuseableButton(
                  onPressed: ref.read(signInViewModelProvider).signInWithGoogle,
                  title: 'Sign in with Google',
                ),
              ).animate().slide(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
              const SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }
}
