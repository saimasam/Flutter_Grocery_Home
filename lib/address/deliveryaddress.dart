import 'package:cart/address/singledeliveryitem.dart';
import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class DeliveryAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Delivery Details",
        ),
        leading: BackButton(
          onPressed: () {
            Navigator.pushNamed(context, "Now");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "NewAddress");
        },
        backgroundColor: MainColor.backgroundColor,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: Container(
        width: 160,
        height: 48,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: MaterialButton(
          child: Text(
            "Add new address",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: MainColor.whiteColor,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "NewAddress");
          },
          color: MainColor.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Deliver To "),
            leading: Image.asset(
              "assets/loc4.png",
              height: 30,
            ),
          ),
          Divider(
            height: 1,
            color: MainColor.blackColor,
          ),
          Column(
            children: [
              SingleDeliveryItem(
                  title: "Sam Developer",
                  addressType: "Home",
                  address:
                      "3c Maple-1 Hilandwood Action Area 2c Newtown Kolkata West Bengal",
                  number: "+912345678902"),
            ],
          ),
        ],
      ),
    );
  }
}
