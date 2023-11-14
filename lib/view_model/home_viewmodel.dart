import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/utils/vehicle_model.dart';

final homeViewModelProvider = Provider<HomeViewModel>((ref) {
  return HomeViewModel();
});

class HomeViewModel extends ChangeNotifier {
   final List<Vehicle> vechicle = [
    Vehicle(
        image: "images/plane.png",
        title: "Air Freight",
        subtitle: "International"),
    Vehicle(
        image: "images/redtruck.png",
        title: "Cargo Freight",
        subtitle: "Relieable"),
    Vehicle(
        image: "images/ship.png",
        title: "Ocean Freight",
        subtitle: "International"),
  ];
}
