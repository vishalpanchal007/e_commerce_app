import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 6; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xFF4C53A5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "-60%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "Itempage");
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/$i.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Product Title",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Write description of product",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF4C53A5),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$159.00",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
