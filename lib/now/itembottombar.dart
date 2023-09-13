import 'package:cart/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomBar extends StatelessWidget {
  const ItemBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      decoration: BoxDecoration(
        color: MainColor.whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "CartPages");
            },
            child: Container(
              height: 220,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: MainColor.backgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                CupertinoIcons.cart_fill,
                color: MainColor.whiteColor,
                size: 35,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "CartPages");
            },
            child: Container(
              height: 60,
              width: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: MainColor.backgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Buy Now",
                style: TextStyle(
                  color: MainColor.whiteColor,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
