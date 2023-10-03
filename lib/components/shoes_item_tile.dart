import 'package:flutter/material.dart';

class ShoesItemTile extends StatelessWidget {
  final  shoesName;
  final shoesPrice;
  final imagePath;
  final colour;
  void Function()? onPressed;

   ShoesItemTile({
    super.key,
    required this.shoesName,
    required this.shoesPrice,
    required this.imagePath,
    required this.colour,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              height: 64,
            ),
            Text(
              shoesName,
              style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            MaterialButton(
              onPressed: onPressed,
              color: Colors.white,
              child: Text(
                "\$" + shoesPrice,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
