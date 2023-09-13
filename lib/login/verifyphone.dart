import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({super.key});

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: MainColor.backgroundColor,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: Text(
                'Verify Your Phone Number',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MainColor.blackColor,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 90, left: 20),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  '91+0000000000',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: MainColor.blackColor,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 75, left: 130),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Change',
                    style: TextStyle(
                      color: MainColor.blackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(top: 120, left: 20, right: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: MainColor.backgroundColor,
                      filled: true,
                      hintText: 'Enter OTP',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 720, left: 20),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Didn't get a text",
                    style: TextStyle(
                      color: MainColor.blackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 520, left: 260),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: MainColor.whiteColor,
                    radius: 35,
                    child: IconButton(
                      color: MainColor.blackColor,
                      onPressed: () {
                        Navigator.pushNamed(context, 'Location');
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
