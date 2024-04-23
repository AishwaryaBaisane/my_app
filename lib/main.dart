import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/componants/Cart_Screen.dart';

import 'componants/CheckOut.dart';
import 'componants/Home_Screen.dart';
import 'componants/detail.dart';
import 'componants/splace_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      // initialRoute: '/home',
      routes: {
        '/' : (context) =>  Checkout() ,
            // splaceScreen(),
        '/home' : (context) => HomeScreen(),
        '/detail' :(context) => DetailScreen(),
        '/cart' :(context) => CartScreen() ,
        '/check' :(context) => Checkout() ,
      },
    );
  }
}


