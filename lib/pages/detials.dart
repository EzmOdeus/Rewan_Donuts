import 'package:donut_tutorial/pages/home_page.dart';
import 'package:donut_tutorial/util/data.dart';
import 'package:donut_tutorial/util/donut_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

// class detials extends StatelessWidget {
//   detials(
//       {super.key,
//       required this.image,
//       required this.name,
//       required this.flaver,
//       required this.price});
//   final String image;
//   final String name;
//   final String flaver;
//   final String price;

//   @override
//   Widget build(BuildContext context) {
//     double sizescreen = MediaQuery.of(context).size.width;
//     double hightscreen = MediaQuery.of(context).size.height;
//     final isnormal = MediaQuery.of(context).size.width <= 450;
//     final islarg = MediaQuery.of(context).size.width >= 450;

//     List lis = [];
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//         extendBodyBehindAppBar: true,
//         appBar: AppBar(
//             elevation: 0,
//             backgroundColor: Colors.transparent,
//             leading: IconButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (_) => HomePage()));
//                 },
//                 icon: Icon(
//                   Icons.arrow_back_ios_new,
//                   color: Colors.black,
//                 ))),
//         body: Stack(children: [
//           Positioned(
//             top: 0,
//             child: Container(
//               alignment: Alignment.topCenter,
//               height: size.height / 2,
//               width: size.width,
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     Color.fromARGB(111, 235, 12, 179),
//                     Color.fromARGB(255, 225, 23, 127),
//                   ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
//                   ),child: Image.asset(image,height: 300,width: 250),
//             ),
//           ),
//           Positioned(
//               bottom: 0,
//               child: Container(
//                   height: size.height / 1.8,
//                   width: size.width,
//                   decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 243, 242, 247),
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(40),
//                         topRight: Radius.circular(40)),
//                   ),
//                   child: Stack(children: [
//                     Padding(
//                         padding: EdgeInsets.all(24.0),
//                         child: SingleChildScrollView(
//                             child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                               Center(
//                                 child: Container(
//                                   margin: EdgeInsets.only(bottom: 16),
//                                   height: 5,
//                                   width: 32 * 1.5,
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       colors: [
//                                         Color.fromARGB(255, 166, 141, 141),
//                                         Color.fromARGB(255, 255, 170, 239),
//                                       ],
//                                     ),
//                                     borderRadius: BorderRadius.circular(3),
//                                   ),
//                                 ),
//                               ),
//                               Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text(
//                                         flaver,
//                                         style: TextStyle(
//                                           fontSize: 20,

//                                           fontWeight: FontWeight.bold,
//                                           // height: 38,
//                                           // letterSpacing: 20,
//                                         ),
//                                       ),
//                                       Text(
//                                         "\$ ${price}",
//                                         style: TextStyle(
//                                                 fontSize: 30,
//                                                 fontWeight: FontWeight.bold,
//                                                 // height: 38,
//                                                 // letterSpacing: 20,
//                                                 color: Colors.amber)
//                                             .copyWith(
//                                                 color: Color(0xFF935DE6),
//                                                 fontWeight: FontWeight.w600),
//                                       ),
//                                     ],
//                                   ),

//                                    Text(
//                                     name,
//                                     style: TextStyle(
//                                       fontSize: 20,

//                                       fontWeight: FontWeight.bold,
//                                       // height: 38,
//                                       // letterSpacing: 20,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ])))
//                   ])))
//         ]));
//   }
// }

class Cartview extends StatefulWidget {
  Cartview({super.key});

  @override
  State<Cartview> createState() => _CartviewState();
}

class _CartviewState extends State<Cartview> {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
              ))),
      // backgroundColor: Color.fromARGB(154, 224, 170, 204),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1

            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Color.fromARGB(255, 194, 24, 91),
              Color.fromARGB(169, 244, 143, 177),
              Color.fromARGB(169, 244, 143, 177),
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                      height: MediaQuery.of(context).size.height / 1,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color.fromARGB(169, 174, 87, 115),
                                      Color(0xFFCBAAFF),
                                    ],
                                  )),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      data[index].image,
                                      fit: BoxFit.contain,
                                      width: 80,
                                      height: 80,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            data[index].Flavor,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            data[index].name,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                            ),
                                            '\$${data[index].Price.toString()}',
                                          ),
                                        ]),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.delete),
                                    color: Colors.red,
                                    onPressed: () {
                                      setState(() {
                                        data.removeAt(index);
                                      });
                                    },
                                    iconSize: 35,
                                  )
                                ],
                              ));
                        },
                        itemCount: data.length,
                        separatorBuilder: (BuildContext context, int index) {
                          double tot;
                          return SizedBox(
                            height: 20,
                          );
                        },
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => checkout())),
                        child: Container(
                          width: 250,
                          height: 50,
                          child: Center(
                              child: Text(
                            "Check OUT",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: .7),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}

class checkout extends StatelessWidget {
  const checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                ))),
        // backgroundColor: Color.fromARGB(154, 224, 170, 204),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // Add one stop for each color. Stops should increase from 0 to 1

              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Color.fromARGB(255, 194, 24, 91),
                Color.fromARGB(169, 244, 143, 177),
                Color.fromARGB(169, 244, 143, 177),
              ],
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/2),
            child: Center(
                child: Column(
              children: [
                  Icon(
                  Icons.add_task_rounded,
                  color: Color.fromARGB(255, 155, 225, 157),
                  size: 70,
                ),
                SizedBox(height: 20,),
                Text('Thanks for using Rewan Donuts',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
                                  SizedBox(
                      height: 10,
                    ),
                Text('Order Done',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                                  SizedBox(
                      height: 40,
                    ),
                                     GestureDetector(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage())),
                  child: Container(
                    width: 250,
                    height: 50,
                    child: Center(
                        child: Text(
                      "Back To Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .7),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.pink),
                  ),
                ),
                
                
              ],
            )),
          ),
        ));
  }
}
