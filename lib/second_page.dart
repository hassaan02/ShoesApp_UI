import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/components/shoes_item_tile.dart';
import 'package:nike_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.shopping_bag),
        backgroundColor: Color(0xff03045E),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Find The Best Available SoleMate For You",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const SizedBox(height: 4.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),
            const SizedBox(height: 4.0),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "All Shoes",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Expanded(
                child: Consumer<CartModel>(
              builder: (context, value, child) => GridView.builder(
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1/1.3,
                      crossAxisCount: 2),
                      itemCount: value.shopItems.length,
                      padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    return ShoesItemTile(
                      shoesName: value.shopItems[index][0],
                      shoesPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      colour: value.shopItems[index][3],
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
