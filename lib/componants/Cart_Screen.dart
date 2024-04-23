import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/componants/List.dart';
import 'package:my_app/utils/colors.dart';

import '../utils/global.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text('Cart Screen'),
        ),
        body: Align(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 550, left: 5, top: 10, right: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  CartList.length,
                  (index) => cart(
                      img: CartList[index]['img'],
                      name: CartList[index]['name'],
                      price: CartList[index]['price']),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // qty = CartList.length;
            for (int i = 0; i < CartList.length; i++) {
              qty = (qty + CartList[i]['member']).toInt();
              amount = amount + CartList[i]['price'] * CartList[i]['member'];
              total = ((amount * 10) / 100) + amount;
            }
            Navigator.of(context).pushNamed('/check');
          },
          child: Icon(Icons.check_box_outlined),
        ),
      ),
    );
  }

  Column cart({required String img, required String name, required int price}) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              alignment: Alignment.center,
              height: 130,
              width: 385,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 2, blurRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 95,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              img,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 2)
                          ],
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 10),
                          child: Text(name, style: TextStyle(fontSize: 20,color: secondryColor,fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('${price}' + "/-",
                              style: TextStyle(fontSize: 25,color: secondryColor)),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(),
                        //   child: GestureDetector(
                        //       onTap: () {
                        //         setState(() {
                        //           CartList.removeAt(selectIndex);
                        //         });
                        //       },
                        //       child: Icon(Icons.delete)),
                        // ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, top: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4)),
                              child :Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: secondryColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        num++;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 6),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, top: 2),
                            child: Center(
                              child: Text(
                                '$num',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: secondryColor,
                                  borderRadius: BorderRadius.circular(4)),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    num--;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 6),
                                  child: Icon(
                                    Icons.minimize,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ],
    );
  }
}

int num = 0;
