import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: MainColor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: MainColor.blackColor,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(
                  Icons.discount,
                  color: MainColor.yellowColor,
                ),
                Text(
                  "Use promo coupons",
                  style: TextStyle(
                    fontSize: 18,
                    color: MainColor.blackColor,
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 25, thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 23,
                      color: MainColor.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Rs 140",
                    style: TextStyle(
                      fontSize: 21,
                      color: MainColor.yellowColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    "PaymentPage",
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    color: MainColor.yellowColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Check Out",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MainColor.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
