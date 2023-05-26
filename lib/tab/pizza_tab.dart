import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class PizzaTab extends StatelessWidget {
  List KiBurger = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Vegetarian Pizza", "120", Colors.blue, "lib/images/pizza 1.png"],
    ["Pepperoni Pizza", "150", Colors.red, "lib/images/pizza 2.png"],
    ["Meat Lover's: Pizza", "170", Colors.purple, "lib/images/pizza 3.png"],
    ["SeaFood Pizza", "250", Colors.brown, "lib/images/pizza 4.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: KiBurger.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: KiBurger[index][0],
          donutPrice: KiBurger[index][1],
          donutColor: KiBurger[index][2],
          imageName: KiBurger[index][3], resturant: 'Pizza',
        );
      },
    );
  }
}
