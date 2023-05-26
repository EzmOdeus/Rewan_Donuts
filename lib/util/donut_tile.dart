import 'package:donut_tutorial/pages/detials.dart';
import 'package:donut_tutorial/util/data.dart';
import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String resturant;
  final donutColor;
  final String imageName;

  final double borderRadius = 12;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
    required this.resturant,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () {
          data.addAll([Data(donutFlavor, donutPrice, imageName, resturant)]);
          final snak = SnackBar(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.beenhere,
                color: Colors.green,
              ),
              Text(
                textAlign: TextAlign.center,
                'Added Successfully',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ])),
            backgroundColor: Colors.green.withOpacity(0.5),
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 1),
            margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).size.height / 1.10),
          );
          ScaffoldMessenger.of(context).showSnackBar(snak);
          print(data);
        },
        child: Container(
          decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Column(
            children: [
              // price
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(borderRadius),
                        topRight: Radius.circular(borderRadius),
                      ),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '\$$donutPrice',
                      style: TextStyle(
                        color: donutColor[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),

              // donut picture
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 37, vertical: 16),
                child: Image.asset(imageName),
              ),

              // donut flavor
              Text(
                donutFlavor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                resturant,
                style: TextStyle(color: Colors.grey[600]),
              ),

              // love icon + add button
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // love icon
                    Icon(
                      Icons.favorite,
                      color: Colors.pink[400],
                    ),

                    // plus button
                    Icon(
                      Icons.add,
                      color: Colors.grey[800],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
