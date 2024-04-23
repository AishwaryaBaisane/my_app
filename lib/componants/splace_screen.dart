import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/utils/colors.dart';

import 'Home_Screen.dart';


class splaceScreen extends StatefulWidget {
  const splaceScreen({super.key});

  @override
  State<splaceScreen> createState() => _splaceScreenState();
}

class _splaceScreenState extends State<splaceScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(onTap: () {
        setState(() {
          Navigator.of(context).pushNamed('/home');
        });
      },
        child: Scaffold(
          backgroundColor: primaryColor,
          body: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      alignment: Alignment.center,
                      height: 300,
                      width: 300,
                      decoration: const  BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img/eye.png"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 300),
                    child: Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        // alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 340),
                        height: 15,
                        width: 10,
                        decoration: BoxDecoration(
                          color: secondryColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
      );
  }
}

