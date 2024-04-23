import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/utils/colors.dart';

import 'Home_Screen.dart';
import 'List.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Detail Screen',
            style: TextStyle(color: Colors.black),
          ),
          actions:  [
            ActionChip(
              avatar: Icon(favorite ? Icons.favorite : Icons.favorite_border),
              label: const Text('Save to favorites'),
              onPressed: () {
                setState(() {
                  favorite = !favorite;
                });
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
                Container(
                  alignment: Alignment.center,
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(
                        data['img'],
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 365, right: 15, top: 10),
                              padding: EdgeInsets.only(left: 10),
                              height: 25,
                              width: 90,
                              decoration: const BoxDecoration(
                                color: Color(0xff333366),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 3),
                                child: Text(
                                  'Best Seller',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 200, right: 30),
                                  child: Container(
                                    height: 10,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: secondryColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 200, right: 10),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: secondryColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 200, right: 10),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: secondryColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 200, right: 10),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: secondryColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 200, right: 10),
                                  child: Icon(
                                    Icons.add,
                                    size: 19,
                                    color: secondryColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 248),
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 600,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 5,
                            blurRadius: 2)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  // Icon(Icons.phone_callback_outlined,color: Colors.black,size: 30,),
                                  Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 90,
                                      width: 65,
                                      // color: Colors.black12,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.phone_callback_outlined),
                                          Text('   Buy on Whatsapp')
                                        ],
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 90,
                                      width: 68,
                                      // color: Colors.black12,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.home_outlined,
                                          ),
                                          Text('Try at\n Home')
                                        ],
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 90,
                                      width: 65,
                                      // color: Colors.black12,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.storefront_outlined),
                                          Text('Buy on\n Store')
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Icon(Icons.phone_callback_outlined,color: Colors.black,size: 30,),
                                  // Icon(Icons.home_outlined,size: 35,),
                                  // Icon(Icons.storefront_outlined,size: 30,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30, top: 1),
                                    child: GestureDetector(onTap: () {
                                      bool Status = false;
                                      int index = 0;
                                      for(int i=0; i<CartList.length; i++)
                                        {
                                          if(CartList[i]['name'] == contant[selectIndex]['name'])
                                            {
                                              index = i;
                                              Status = true;
                                            }
                                        }
                                      if(Status)
                                        {
                                          CartList[index]['member']++;
                                        }
                                      else
                                        {
                                          CartList.add(contant[selectIndex]);
                                        }
                                        // Navigator.of(context).pushNamed('/cart');
                                    },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 50,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: secondryColor,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '  Add to Cart',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 350, left: 7),
                      child: Text(
                        data['name'],
                        style: TextStyle(fontSize: 40),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Row(
                    children: [
                      Text(
                        '  Frame Size:  ',
                        style: TextStyle(fontSize: 17),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: secondryColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '  MEDIUM  ',style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.info_outline,
                              size: 20,color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 7),
                      child: Text(
                        '4.5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Text(
                        '19 Rating',
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text(
                        '${data['price']}' + '/-',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        height: 90,
                        width: 350,
                        child: Text(
                          data['des'],
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
bool favorite = false;
// Paddinging(
// padding: const EdgeInsets.only(left: 14, top: 390),
// child: Container(
// height: 50,
// width: 383,
// decoration: BoxDecoration(
// color: primaryColor,
// borderRadius: BorderRadius.only(
// bottomRight: Radius.circular(15),
// bottomLeft: Radius.circular(15)),
// boxShadow: [
// BoxShadow(
// color: Colors.black26, spreadRadius: 2, blurRadius: 2)
// ],
// ),
// child: Row(
// children: [
// Padding(
// padding: const EdgeInsets.only(left: 300, top: 10),
// child: Text(
// '${data['price']}' + '/-',
// style: TextStyle(
// fontSize: 25,
// color: secondryColor,
// fontWeight: FontWeight.bold),
// ),
// ),
// ],
// ),
// ),
// )
