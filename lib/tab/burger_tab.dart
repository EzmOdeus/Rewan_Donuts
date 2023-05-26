import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class BurgerTab extends StatelessWidget {
  List KiBurger = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["BBQ Bacon Burger", "55", Colors.blue, "lib/images/burger1.png"],
    ["Classic Cheeseburge", "50", Colors.red, "lib/images/Burger2.png"],
    ["BBQ Bacon Burger", "120", Colors.purple, "lib/images/burger3.png"],
    ["Mushroom Burger", "125", Colors.brown, "lib/images/Burger 4.png"],
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
          imageName: KiBurger[index][3], resturant: 'Burger',
        );
      },
    );
  }
}
