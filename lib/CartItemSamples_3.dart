import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xFF4C53A5),
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Cart',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Color(0xFF4C53A5)),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert, size: 30, color: Color(0xFF4C53A5))
        ],
      ),
    );
  }
}
