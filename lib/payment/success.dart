import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MainColor.whiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Column(
              children: [
                Image(
                  image: AssetImage('assets/t.gif'),
                  height: 200.0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    'Successfull !',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 90,
                  vertical: 10,
                ),
                child: Text(
                  'Your payment was done successfully',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: MainColor.greyColor,
                  ),
                )),
            MaterialButton(
              color: MainColor.tealColor,
              onPressed: () {
                Navigator.pushNamed(context, 'PaymentPage');
              },
              child: Text(
                "Ok",
                style: TextStyle(
                  color: MainColor.whiteColor,
                ),
              ),
            ),
          ],
        ));
  }
}
