import 'package:cart/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: MainColor.whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "Now");
            },
            child: Column(
              children: [
                Icon(
                  Icons.home,
                  color: MainColor.greenColor,
                  size: 32,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    color: MainColor.greenColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Icon(
                  Icons.search,
                  color: MainColor.greenColor,
                  size: 32,
                ),
                Text(
                  "Explore",
                  style: TextStyle(
                    color: MainColor.greenColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "CartPages");
            },
            child: Column(
              children: [
                Icon(
                  CupertinoIcons.cart,
                  color: MainColor.greenColor,
                  size: 32,
                ),
                Text(
                  "My Cart",
                  style: TextStyle(
                    color: MainColor.greenColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "MyProfile");
            },
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  color: MainColor.greenColor,
                  size: 32,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                    color: MainColor.greenColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
