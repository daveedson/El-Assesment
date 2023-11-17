import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/core/auth_manager.dart';
import 'package:test_app/core/routes.dart';
import 'package:test_app/view_model/navigation_viewmodel.dart';
import 'package:test_app/view_model/order_details_viewmodel.dart';

final splashViewmodelProvider = Provider<SplashViewModel>((ref) {
  return SplashViewModel(ref: ref);
});

class SplashViewModel extends ChangeNotifier {
  final Ref? ref;

  SplashViewModel({required this.ref});
  void init() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      ref!.read(authManagerProvider).authenticateUser(user);
      ref!.read(orderDetailsViewModelProvider).listentoOrderStatus();
      ref!.read(orderDetailsViewModelProvider).getStatusFromLocalStorage();
      await Future.delayed(const Duration(seconds: 2));
      ref!
          .read(navigationProvider)
          .router
          .replaceNamed(Routes.navigationBarRoute);
    
    } else {
      await Future.delayed(const Duration(seconds: 2));
      ref!.read(navigationProvider).router.replaceNamed(Routes.signInRoute);
    }
  }
}
