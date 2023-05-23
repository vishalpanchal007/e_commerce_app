import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/CategoriesWidget_5.dart';
import 'package:e_commerce_app/HomeAppBar_6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ItemsWidget_11.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Serch here...",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        color: Color(0xFF4C53A5),
                        size: 27,
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                // Categories
                CategoriesWidget(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    'Best Selling',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                ItemsWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: Color(0xFF4C53A5),
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
