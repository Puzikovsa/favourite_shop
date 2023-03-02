import 'package:favourite_shop/providers/product.dart';
import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  final Map<String, CartItem> _order = {};

  Map<String, CartItem> get order => _order;

  void addProductToCart(Product product) {
    if (_order.containsKey(product.id)) {
      _order.update(product.id, (cartItem) =>
      CartItem(
          id: cartItem.id,
          product: product,
          quantity: cartItem.quantity + 1),
      );
    } else {
      _order.putIfAbsent(
        product.id,
        () => CartItem(
          id: DateTime.now().toString(),
          product: product,
          quantity: 1,
        ),
      );
    }
  }
}

class CartItem {
  final String id;
  final Product product;
  final int quantity;
  late final double price;

  CartItem({
    required this.id,
    required this.product,
    required this.quantity})
  {
    price = product.price * quantity;
  }
}
