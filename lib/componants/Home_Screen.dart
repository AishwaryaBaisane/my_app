import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/colors.dart';
import 'List.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Buy 1 Get 1 Free ',
                    style: TextStyle(color: secondryColor, fontSize: 15)),
                const TextSpan(
                    text: '\nJoin Gold ',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: (Icon(
                Icons.headset_mic_outlined,
                size: 25,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: (Icon(
                Icons.notifications_active_rounded,
                size: 25,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(onTap: () {
                CartList.add;
                Navigator.of(context).pushNamed('/cart');
              },
                child: (Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                )),
              ),
            ),

          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 390,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 1,
                                spreadRadius: 2)
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          trailing: const Icon(
                            Icons.search,
                          ),
                          leading: Image.asset("assets/img/eye.png"),
                          title: const Text(
                            "Search",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black38),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 3),
                            height: 60,
                            width: 121,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 1,
                                    spreadRadius: 1)
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const ListTile(
                              trailing: Icon(
                                Icons.storefront_outlined,
                              ),
                              title: Text(
                                "Buy at\nStore",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            height: 60,
                            width: 121,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 1,
                                    spreadRadius: 1)
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const ListTile(
                              trailing: Icon(
                                Icons.home_sharp,
                              ),
                              title: Text(
                                "Buy at\nHome",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            height: 60,
                            width: 121,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 1,
                                    spreadRadius: 1)
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const ListTile(
                              trailing: Icon(
                                Icons.call,
                              ),
                              title: Text(
                                "Buy on\nChat",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 250,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/img/lence.jpg"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 260),
                child: Text(
                  'Eyeglasses',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Wrap(
                      children: List.generate(
                        contant.length,
                        (index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/detail',
                                arguments: contant[index]);
                            setState(() {
                              selectIndex = index;
                              x = true;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: box1(
                              img: contant[index]['img'],
                              name: contant[index]['name'],
                              price: contant[index]['price'],
                              des: contant[index]['des'],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Column(
                    //   children: List.generate(
                    //     contant1.length,
                    //     (index) => GestureDetector(
                    //       onTap: () {
                    //         Navigator.of(context).pushNamed('/detail',
                    //             arguments: contant1[index]);
                    //         setState(() {
                    //           selectIndex = index;
                    //           x = false;
                    //         });
                    //       },
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(top: 10),
                    //         child: box2(
                    //           img: contant1[index]['img'],
                    //           name: contant1[index]['name'],
                    //           price: contant1[index]['price'],
                    //           des: contant1[index]['des'],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int selectContant = 0;

  Column box1({
    required String img,
    required String name,
    required int price,
    required String des,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 10),
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
              boxShadow: [
                BoxShadow(color: Colors.black12, spreadRadius: 4, blurRadius: 2)
              ],
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(
                  img,
                ),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(bottom: 170, right: 100),
              padding: EdgeInsets.only(left: 7),
              height: 35,
              width: 90,
              decoration: const BoxDecoration(
                  color: Color(0xff333366),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: const Padding(
                padding: EdgeInsets.only(top: 3),
                child: Text(
                  'Best Seller',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20, right: 4,),
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 4, blurRadius: 2)
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Color(0xff333366),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      '${price}' + '/-',
                      style: const TextStyle(
                        color: Color(0xff333366),
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

// Column box2({
//   required String img,
//   required String name,
//   required int price,
//   required String des,
// }) {
//   return Column(
//     children: [
//       Padding(
//         padding: const EdgeInsets.only(left: 20),
//         child: Container(
//           alignment: Alignment.center,
//           height: 200,
//           width: 180,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: const BorderRadius.only(
//                 topRight: Radius.circular(15), topLeft: Radius.circular(15)),
//             boxShadow: [
//               BoxShadow(color: Colors.black12, spreadRadius: 4, blurRadius: 2)
//             ],
//             image: DecorationImage(
//               fit: BoxFit.fitWidth,
//               image: AssetImage(
//                 img,
//               ),
//             ),
//           ),
//           child: Container(
//             margin: const EdgeInsets.only(bottom: 170, right: 100),
//             padding: EdgeInsets.only(left: 10),
//             height: 35,
//             width: 90,
//             decoration: const BoxDecoration(
//                 color: Color(0xff333366),
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(15),
//                     bottomRight: Radius.circular(15))),
//             child: const Padding(
//               padding: EdgeInsets.only(top: 3),
//               child: Text(
//                 'Best Seller',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ),
//       ),
//       Column(
//         children: [
//           Container(
//             margin: const EdgeInsets.only(bottom: 20, left: 20),
//             height: 50,
//             width: 180,
//             decoration: BoxDecoration(
//               color: primaryColor,
//               borderRadius: const BorderRadius.only(
//                   bottomRight: Radius.circular(15),
//                   bottomLeft: Radius.circular(15)),
//               boxShadow: const [
//                 BoxShadow(color: Colors.black12, spreadRadius: 4, blurRadius: 2)
//               ],
//             ),
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Text(
//                     name,
//                     style: const TextStyle(
//                       color: Color(0xff333366),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30),
//                   child: Text(
//                     '${price}' + '/-',
//                     style: const TextStyle(
//                       color: Color(0xff333366),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       )
//     ],
//   );
// }

