import 'package:flutter/material.dart';
import 'package:nike_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("My Cart"),
            centerTitle: true,
            backgroundColor: Color(0xff00b4d8),
          ),
          body: Consumer<CartModel>(
            builder: (context, value, child) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.cartItems.length,
                        padding: EdgeInsets.all(8.0),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffade8f4),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                child: ListTile(
                                  title: Text(value.cartItems[index][0]),
                                  leading: Image.asset(
                                    value.cartItems[index][2],
                                    height: 40,
                                  ),
                                  subtitle:
                                      Text('\$' + value.cartItems[index][1]),
                                  trailing: IconButton(
                                      onPressed: () => Provider.of<CartModel>(
                                              context,
                                              listen: false)
                                          .removeItemsFromCart(index),
                                      icon: Icon(Icons.cancel_rounded)),
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              );
            },
          )),
    );
  }
}
