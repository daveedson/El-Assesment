import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/utils/shipments_model.dart';


final shipmentViewmodelProvider = ChangeNotifierProvider<ShipmentViewModel>((ref) {
  return ShipmentViewModel();
});
class ShipmentViewModel extends ChangeNotifier {
  int currentIndex = 0;
   final List<ShipementsModel> shipmentData = [
    ShipementsModel(
      progressText: "In-Progress",
      textColor: AppColors.green,
      price: '1400',
      progressIcon: Icon(
        Icons.autorenew_outlined,
        color: AppColors.green,
      ),
    ),
    ShipementsModel(
      progressText: "In-Progress",
      textColor: AppColors.green,
      price: '3000',
      progressIcon: Icon(
        Icons.autorenew_outlined,
        color: AppColors.green,
      ),
    ),
    ShipementsModel(
      progressText: "In-Progress",
      textColor: AppColors.green,
      price: '8000',
      progressIcon: Icon(
        Icons.autorenew_outlined,
        color: AppColors.green,
      ),
    ),
  ];

  void updateTab(int index) {
    currentIndex = index;
    notifyListeners();
  }

}
