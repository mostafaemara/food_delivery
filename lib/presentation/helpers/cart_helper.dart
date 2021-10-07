import "../../domain/entities/cart_item.dart";

extension CartItemsHelper on List<CartItem> {
  int itemsCount() {
    int count = 0;
    for (final item in this) {
      count += item.quantity;
    }
    return count;
  }

  double totalPrice() {
    double price = 0;
    for (final item in this) {
      price += (item.quantity * item.price);
    }
    return price;
  }
}
