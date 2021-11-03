import 'package:food_delivery_app/domain/entities/order.dart';

extension OrdersHelper on Order {
  int totalItemsQuantity() {
    int count = 0;
    for (final item in items) {
      count += item.quantity;
    }
    return count;
  }
}
