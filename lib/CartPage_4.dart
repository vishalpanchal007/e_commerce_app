import 'package:e_commerce_app/CartAppBar_1.dart';
import 'package:e_commerce_app/CartItemSamples_3.dart';
import 'package:flutter/material.dart';

import 'CartBottomNavBar_2.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              children: [
                CartItemSamples(),
                Container(
                  // decoration:
                  //     BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff4c53a5),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Add Coupon Code",
                          style: TextStyle(
                              color: Color(0xff4c53a5),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
