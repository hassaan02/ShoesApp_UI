import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List of items on sale
  final List _shopItems = [
    ["Nike Air Force", "19.00", "lib/images/nike1.png", Colors.red],
    ["Nike Air Max", "25.00", "lib/images/nike2.png", Color(0xffef476f)],
    ["Nike Air Zoom", "30.50", "lib/images/nike3.png", Color(0xff8d99ae)],
    ["Nike Cortez ", "10.50", "lib/images/nike4.png", Color(0xffd90429)],
    ["Nike Terra Tiger", "20.00", "lib/images/nike5.png", Color(0xff00b4d8)],
    [" Nike Space Hippie", "40.00", "lib/images/nike6.png", Colors.grey],
    [" Nike Blazer Mid", "21.50", "lib/images/nike7.png", Color(0xfff3722c)],
    ["Nike Waffle One", "18.00", "lib/images/nike8.png", Color(0xffd58936)],
  ];
  // List of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add items to cart
  void addItemsToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove items from cart
  void removeItemsFromCart(int index) {
    if (index >= 0 && index < _cartItems.length) {
      _cartItems.removeAt(index);
      notifyListeners();
    } else {
      // Handle an invalid index here, such as showing an error message.
    }
  }

  // calculate total amount
  String calculateTotal() {
    double totalPrice = 0;
    for (var i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
