import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: MainColor.backgroundColor,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80, left: 30),
              child: Container(
                width: 80,
                height: 80,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/loc4.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 170, left: 30),
              child: Text(
                'Set your loction services',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: MainColor.blackColor,
                ),
              ),
            ),
            /*Container(
              padding: const EdgeInsets.only(top: 210, left: 30),
              child: Text(
                'We use your loction to show you potential matches in your area.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: MainColor.blackColor,
                ),
              ),
            ),*/
            Container(
              padding: const EdgeInsets.only(top: 220, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'Address');
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: MainColor.greyColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            const BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 1,
                              color: Colors.white,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Set location services',
                            style: TextStyle(
                              color: MainColor.whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 350),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: MainColor.backgroundColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 1,
                              color: Colors.white,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Not Now',
                            style: TextStyle(
                              color: MainColor.whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
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
