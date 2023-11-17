import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/core/local_storage.dart';
import 'package:test_app/model/order_status.dart';
import 'package:test_app/service/order_details_service.dart';

final orderDetailsViewModelProvider =
    ChangeNotifierProvider<OrderDetailsViewModel>((ref) {
  return OrderDetailsViewModel(ref: ref);
});

class OrderDetailsViewModel extends ChangeNotifier {
  final Ref ref;

  OrderDetailsViewModel({required this.ref});

//TODO -- Show a loading state when no order status  is available
  OrderStatus orderStatus = OrderStatus.orderPlaced;

  void listentoOrderStatus() {
    final datasource = ref.read(orderDetailsSerrviceProvider).dataSource;

    final channel = datasource.channels.get('test_channel');
    channel.subscribe().listen((message) {
      print('responded with ${message.data}');
      final status = OrderStatus.getStatusFromString(message.data.toString());
      print('Parsed orde status  ${status}');

      if (status != OrderStatus.unKnown) {
        orderStatus = status;
        saveStatusFromLocalStorage(orderStatus.status);
        notifyListeners();
      }
    });
    notifyListeners();
  }

  void getStatusFromLocalStorage() {
    ref
        .read(localStorageProvider)
        .getStringFromLocalStorage(LocalStroageKeys.orderStatus);
  }

  void saveStatusFromLocalStorage(String value) {
    ref
        .read(localStorageProvider)
        .saveStringToLocalStorage(LocalStroageKeys.orderStatus, value);
  }
}
