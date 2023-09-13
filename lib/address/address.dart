import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: MainColor.whiteColor,
        appBar: AppBar(
          title: const Text('Choose Delivery Address'),
          centerTitle: true,
          leading: BackButton(
            onPressed: () {},
          ),
          /*actions: const [
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: InkWell(
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ),
                //onTap: () {},
              ),
            ),
          ],*/
        ),
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, left: 5, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: MainColor.lightgreyColor,
                      filled: true,
                      hintText: 'Search for area, apartment, or pin code',
                      //center text
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 150,
              color: MainColor.blackColor,
            ),
            Container(
              padding: const EdgeInsets.only(left: 0, top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Menu');
                    },
                    child: Container(
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(
                        color: MainColor.backgroundColor,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 1,
                            color: Colors.white,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Choose Your Current Loction',
                          style: TextStyle(
                            color: MainColor.whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
