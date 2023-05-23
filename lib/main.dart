import 'package:e_commerce_app/CartPage_4.dart';
import 'package:e_commerce_app/HomePage_7.dart';
import 'package:e_commerce_app/ItemPage_10.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => HomePage(),
        "cartpage": (context) => CartPage(),
        "Itempage": (context) => ItemPage(),
      },
    );
  }
}
