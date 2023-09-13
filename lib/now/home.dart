import 'package:cart/constants/color.dart';
import 'package:cart/now/homebottombar.dart';
import 'package:cart/now/homeposts.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i < 3; i++)
                  Image.asset(
                    "assets/fruit$i.png",
                    height: 220,
                    width: 390,
                    fit: BoxFit.cover,
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: MainColor.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: MainColor.greyColor.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 8; i++)
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: MainColor.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: MainColor.greyColor.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/$i.png",
                      fit: BoxFit.cover,
                    ),
                  ),
              ],
            ),
          ),
          HomePosts(),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
