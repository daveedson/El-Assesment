import 'package:auto_route/auto_route.dart';
import 'package:test_app/core/routes.dart';
import 'package:test_app/view/calculate_screen.dart';
import 'package:test_app/view/estimate_screen.dart';
import 'package:test_app/view/home_screen.dart';
import 'package:test_app/view/inprogrerss_screen.dart';
import 'package:test_app/view/navigation_bar_view.dart';
import 'package:test_app/view/profile_screen.dart';
import 'package:test_app/view/shipment_history.dart';
import 'package:test_app/view/shipments_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: Routes.homeRoute),
        AutoRoute(page: InProgressRoute.page, path: Routes.inProgessRoute),
        AutoRoute(page: NavigationBarViewRoute.page, path: Routes.navigationBarRoute),
        AutoRoute(page: ShipmentHistoryRoute.page, path: Routes.shipmentHistoryRoute),
        AutoRoute(page: ShipmentRoute.page, path: Routes.shipmentRoute),
        AutoRoute(page: EstimateRoute.page, path: Routes.estimateRoute),
      ];
}
