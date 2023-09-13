import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

enum SinginCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  const ProductOverview(
      {super.key, required this.productName, required this.productImage});
  final String productName;
  final String productImage;

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SinginCharacter _character = SinginCharacter.fill;
  Widget bottomNavigatiorBar({
    Color? iconColor,
    Color? backgroundColor,
    Color? color,
    String? title,
    IconData? iconData,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 15,
              color: iconColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title!,
              style: TextStyle(color: color),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigatiorBar(
            backgroundColor: MainColor.tealColor,
            color: MainColor.whiteColor,
            iconColor: MainColor.yellowColor,
            title: "Add to Wishlist",
            iconData: Icons.favorite_outline,
          ),
          bottomNavigatiorBar(
            backgroundColor: MainColor.backgroundColor,
            color: MainColor.blackColor,
            iconColor: MainColor.tealColor,
            title: "Add to Cart",
            iconData: Icons.shopping_cart,
          ),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: MainColor.blackColor),
        title: Text(
          "Product OverView",
          style: TextStyle(color: MainColor.blackColor),
        ),
        leading: BackButton(
          onPressed: () {
            Navigator.pushNamed(context, 'Now');
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Kinley',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "Rs.50",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    height: 100,
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset(
                      'assets/kin.png',
                    ),
                    /*Image.network(
                      widget.productImage,
                    ),*/
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 170, left: 20),
                    width: double.infinity,
                    child: Text(
                      "Available Option",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: MainColor.blackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 2,
                              backgroundColor: Colors.green[700],
                            ),
                            Radio(
                              value: SinginCharacter.fill,
                              groupValue: _character,
                              activeColor: Colors.amber[700],
                              onChanged: (value) {
                                setState(() {
                                  _character = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        const Text(
                          "Rs.50",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: MainColor.greyColor),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 10,
                                color: MainColor.primeColor,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                    color: MainColor.tealColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About This Product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Kinley is a brand of still or carbonated water owned by The Coca-Cola Company and sold in many large European and Asian countries. Its carbonated forms are used for mixers, and also available in a variety of fruit flavors. The Kinley brand is used by Coca-Cola for two types of drinks: Packaged water",
                    style: TextStyle(
                      fontSize: 16,
                      color: MainColor.tealColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
