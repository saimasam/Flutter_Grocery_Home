import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatefulWidget {
  const CartItemSamples({super.key});

  @override
  State<CartItemSamples> createState() => _CartItemSamplesState();
}

class _CartItemSamplesState extends State<CartItemSamples> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: MainColor.yellowColor,
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue!;
                        });
                      },
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: MainColor.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: MainColor.blackColor.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/1.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(
                            "Item Name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: MainColor.blackColor,
                            ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Text(
                                "Rs.50",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: MainColor.yellowColor,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "5KG",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: MainColor.yellowColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.delete,
                          color: MainColor.pinkColor,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: MainColor.yellowColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "-",
                                style: TextStyle(
                                  color: MainColor.whiteColor,
                                  fontSize: 28,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: MainColor.blackColor,
                                ),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: MainColor.yellowColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "+",
                                style: TextStyle(
                                  color: MainColor.whiteColor,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(thickness: 1),
              ],
            ),
          ),
      ],
    );
  }
}
