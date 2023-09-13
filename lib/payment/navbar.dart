import 'package:cart/payment/mywallet.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  static List<Widget> pages = [
    MyWallet(),
  ];
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: pages.elementAt(index),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/c.png',
                  height: myHeight * 0.04,
                  //color: MainColor.greyColor,
                ),
                label: '',
                activeIcon: Image.asset(
                  'assets/c.png',
                  height: myHeight * 0.04,
                  //color: MainColor.purpleColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/h.png',
                  height: myHeight * 0.04,
                  //color: MainColor.greyColor,
                ),
                label: '',
                activeIcon: Image.asset(
                  'assets/h.png',
                  height: myHeight * 0.04,
                  //color: MainColor.purpleColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/p.png',
                  height: myHeight * 0.04,
                  //color: MainColor.greyColor,
                ),
                label: '',
                activeIcon: Image.asset(
                  'assets/p.png',
                  height: myHeight * 0.04,
                  //color: MainColor.purpleColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/w.png',
                  height: myHeight * 0.04,
                  //color: MainColor.greyColor,
                ),
                label: '',
                activeIcon: Image.asset(
                  'assets/w.png',
                  height: myHeight * 0.04,
                  //color: MainColor.purpleColor,
                ),
              ),
            ]),
      ),
    );
  }
}
