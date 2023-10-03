import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Nike Air Force", "19.00", "lib/images/nike1.png", Colors.red],
    ["Nike Air Max", "25.00", "lib/images/nike2.png", Color(0xffef476f)],
    ["Nike Air Zoom", "30.50", "lib/images/nike3.png",Color(0xff8d99ae)],
    ["Nike Cortez ", "10.50", "lib/images/nike4.png", Color(0xffd90429)],
    ["Nike Terra Tiger", "20.00", "lib/images/nike5.png", Color(0xff00b4d8)],
    [" Nike Space Hippie", "40.00", "lib/images/nike6.png", Colors.grey],
    [" Nike Blazer Mid", "21.50", "lib/images/nike7.png", Color(0xfff3722c)],
    ["Nike Waffle One", "18.00", "lib/images/nike8.png", Color(0xffd58936)],
  ];

  get shopItems => _shopItems;
}
