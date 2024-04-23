import 'package:flutter/material.dart';
import 'package:my_app/componants/List.dart';
import 'package:my_app/utils/colors.dart';

import '../utils/global.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                setState(() {
                  qty = 0;
                  amount = 0;
                  total = 0;
                });
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back)),
          title: Text('Checkout Screen'),
        ),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(13),
                          height: 50,
                          width: 380,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 2,
                                    blurRadius: 2)
                              ]),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                height: 70,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/img/gogle.png',
                                      ),
                                    ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),),
                              ),
                              Text(
                                ' Google Pay  ......',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 160),
                                child: Icon(
                                  Icons.circle_outlined,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(13),
                        height: 50,
                        width: 380,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 2,
                              blurRadius: 2)
                        ]),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              height: 70,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/img/apple.jpg',
                                    ),
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Text(
                              ' Apple Pay  ......',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 170),
                              child: Icon(
                                Icons.circle_outlined,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(13),
                        height: 50,
                        width: 380,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 2,
                              blurRadius: 2)
                        ]),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              height: 70,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/img/visa.png',
                                    ),
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Text(
                              ' Visa Pay  ......',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 180),
                              child: Icon(
                                Icons.circle_outlined,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                    color: secondryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: List.generate(
                    1,
                    (index) => Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Total product :',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 180),
                                child: Text(
                                  '$qty',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Amount :',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 200),
                                child: Text(
                                  '$amount',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Gst  :',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 260),
                                child: Text(
                                  '10%',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Total Amount :',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 150),
                                child: Text(
                                  '$total',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
