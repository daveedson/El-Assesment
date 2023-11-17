// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CalculateRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CalculateScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
  
    NavigationBarViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NavigationBarViewScreen(),
      );
    },
    OrderdetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderdetailsScreen(),
      );
    },
  
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [CalculateScreen]
class CalculateRoute extends PageRouteInfo<void> {
  const CalculateRoute({List<PageRouteInfo>? children})
      : super(
          CalculateRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalculateRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InProgressScreen]
class InProgressRoute extends PageRouteInfo<void> {
  const InProgressRoute({List<PageRouteInfo>? children})
      : super(
          InProgressRoute.name,
          initialChildren: children,
        );

  static const String name = 'InProgressRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NavigationBarViewScreen]
class NavigationBarViewRoute extends PageRouteInfo<void> {
  const NavigationBarViewRoute({List<PageRouteInfo>? children})
      : super(
          NavigationBarViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationBarViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderdetailsScreen]
class OrderdetailsRoute extends PageRouteInfo<void> {
  const OrderdetailsRoute({List<PageRouteInfo>? children})
      : super(
          OrderdetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderdetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShipmentScreen]
class ShipmentRoute extends PageRouteInfo<void> {
  const ShipmentRoute({List<PageRouteInfo>? children})
      : super(
          ShipmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShipmentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInScreen]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
