// ignore_for_file: deprecated_member_use, avoid_print
import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final orderDetailsSerrviceProvider = Provider<OrderDetailsService>((ref) {
  return OrderDetailsService();
});

class OrderDetailsService {
  late final ably.Realtime _dataSource;

  ably.Realtime get dataSource => _dataSource;

  void connectToAbly() {
    final clientOptions = ably.ClientOptions.fromKey(
        '9PkhuA.cs4Vyg:ki43iNynKPWi9J4ugJyWUyiezDsDNq22P64B9xqIXL8');
    _dataSource = ably.Realtime(options: clientOptions);
    _dataSource.connection
        .on(ably.ConnectionEvent.connected)
        .listen((ably.ConnectionStateChange stateChange) async {
      print('New state is: ${stateChange.current}');
      switch (stateChange.current) {
        case ably.ConnectionState.connected:
          // Successful connection
          print('Connected to Ably!');
          break;
        case ably.ConnectionState.failed:
          // Failed connection
          break;
        case ably.ConnectionState.initialized:
          print('Connection initialize to Ably!');
        case ably.ConnectionState.connecting:
          print('Connecting to Ably!');
        case ably.ConnectionState.disconnected:
        case ably.ConnectionState.suspended:
        case ably.ConnectionState.closing:
        case ably.ConnectionState.closed:
      }
    });
  }
}
