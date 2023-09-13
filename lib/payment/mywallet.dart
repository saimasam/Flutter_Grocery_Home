import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: myHeight,
          width: myWidth,
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: myHeight * 0.04, left: myWidth * 0.08),
                child: Row(
                  children: [
                    Text(
                      "Hi, IO Team",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: myHeight * 0.01, left: myWidth * 0.08),
                child: Row(
                  children: [
                    Text(
                      'Manage you banking card in IO app',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: MainColor.blackColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: myHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: myWidth * 0.08),
                child: Container(
                  height: myHeight * 0.2,
                  //width: myWidth * 0.9,
                  decoration: BoxDecoration(
                    color: MainColor.purpleColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: myWidth * 0.05,
                            vertical: myHeight * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/m.png',
                              height: myHeight * 0.05,
                              color: MainColor.whiteColor,
                            ),
                            Container(
                              //height: myHeight * 0.03,
                              //width: myWidth * 0.1,
                              padding: EdgeInsets.symmetric(
                                  horizontal: myWidth * 0.02,
                                  vertical: myHeight * 0.005),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: MainColor.whiteColor,
                              ),
                              child: Center(
                                child: Text(
                                  '02/04',
                                  style: TextStyle(color: MainColor.whiteColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          myText('6104'),
                          myText('6104'),
                          myText('6104'),
                          myText('6104'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget myText(String txt) {
    return Text(
      txt,
      style: TextStyle(fontSize: 20, color: MainColor.whiteColor),
    );
  }
}
