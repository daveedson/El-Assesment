import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:test_app/core/auth_manager.dart';
import 'package:test_app/core/routes.dart';
import 'package:test_app/view_model/navigation_viewmodel.dart';
import 'package:test_app/view_model/order_details_viewmodel.dart';

final signInViewModelProvider = ChangeNotifierProvider<SignInViewModel>((ref) {
  return SignInViewModel(ref: ref);
});

class SignInViewModel extends ChangeNotifier {
  final Ref ref;

  SignInViewModel({required this.ref});
  void signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final authResponse =
        await FirebaseAuth.instance.signInWithCredential(credential);

  

    if (authResponse.user != null) {
   ref.read(authManagerProvider).authenticateUser(authResponse.user);
      ref.read(orderDetailsViewModelProvider).listentoOrderStatus();
      ref.read(orderDetailsViewModelProvider).getStatusFromLocalStorage();
     
      ref
          .read(navigationProvider)
          .router
          .replaceNamed(Routes.navigationBarRoute);
    }
  }
}
