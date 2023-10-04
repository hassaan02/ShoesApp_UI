import 'package:flutter/material.dart';
import 'package:nike_app/intro_page.dart';
import 'package:nike_app/model/cart_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
