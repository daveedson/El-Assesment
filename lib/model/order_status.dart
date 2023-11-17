enum OrderStatus {
  orderPlaced(status: 'ORDER_PLACED'),
  orderAccepted(status: 'ORDER_ACCEPTED'),
  orderInProgress(status: 'ORDER_IN_PROGRESS'),
  orderOnTheWay(status: 'ORDER_ON_THE_WAY_TO_CUSTOMER'),
  orderArrived(status: 'ORDER_ARRIVED'),
  orderDelivered(status: 'ORDER_DELIVERED'),
  unKnown(status: 'UNKNOWN');

  const OrderStatus({
    required this.status,
  });

  factory OrderStatus.getStatusFromString(String? status) {
    return OrderStatus.values.firstWhere((element) => element.status == status,
        orElse: () => unKnown);
  }

  final String status;

  int get orderIndex => switch (this) {
        OrderStatus.orderPlaced => 0,
        OrderStatus.orderAccepted => 1,
        OrderStatus.orderInProgress => 2,
        OrderStatus.orderOnTheWay => 3,
        OrderStatus.orderArrived => 4,
        OrderStatus.orderDelivered => 5,
        OrderStatus.unKnown => -1
      };
}
