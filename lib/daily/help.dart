import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '              Help & Support',
            style: TextStyle(),
          ),
          backgroundColor: MainColor.backgroundColor,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Call Support",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: MainColor.blackColor,
                ),
              ),
            ),
            Divider(
              height: 10,
              color: MainColor.greyColor,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "1800-6668-5888 / 5678-9888-5555",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: MainColor.blackColor,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Email Support",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: MainColor.blackColor,
                ),
              ),
            ),
            Divider(
              height: 10,
              color: MainColor.greyColor,
            ),
            Container(
              padding: EdgeInsets.only(top: 0, left: 10),
              child: Text(
                "groceryhomesupport@gmail.com",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: MainColor.blackColor,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Fax:",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: MainColor.blackColor,
                ),
              ),
            ),
            Divider(
              height: 10,
              color: MainColor.greyColor,
            ),
            Container(
              padding: EdgeInsets.only(top: 0, left: 10),
              child: Text(
                "+91 4567889",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: MainColor.blackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
