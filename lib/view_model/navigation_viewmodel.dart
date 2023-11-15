import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/core/router.dart';


final navigationProvider = Provider<NavigationViewModel>((ref) {
  return NavigationViewModel();
});
class NavigationViewModel extends ChangeNotifier {
  NavigationViewModel();
  late AppRouter _router;

  set router(AppRouter router) => _router = router;

  AppRouter get router => _router;
}
