import 'package:cart/constants/color.dart';

import 'package:cart/now/homebottombar.dart';
import 'package:cart/now/homeposts.dart';
import 'package:cart/product/productoverview.dart';
import 'package:cart/product/singleproduct.dart';
import 'package:flutter/material.dart';

class Now extends StatefulWidget {
  const Now({super.key});

  @override
  State<Now> createState() => _NowState();
}

class _NowState extends State<Now> {
  Icon cusIcon = const Icon(Icons.search);
  Widget cusSearchBar = const Text("Now");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        /*floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'Homepage');
          },
          backgroundColor: MainColor.backgroundColor,
          child: Icon(Icons.shopping_bag),
        ),*/
        backgroundColor: MainColor.whiteColor,
        appBar: AppBar(
          backgroundColor: MainColor.backgroundColor,
          centerTitle: true,
          //titleSpacing: 20,*when u will add title then add this

          actions: [
            /*IconButton(
              onPressed: () {
                setState(() {
                  if (cusIcon.icon == Icons.search) {
                    cusIcon = const Icon(Icons.cancel);
                    cusSearchBar = const TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.elliptical(50, 50),
                          ),
                        ),
                      ),
                    );
                    TextStyle(
                      color: MainColor.whiteColor,
                      fontSize: 16,
                    );
                  } else {
                    cusIcon = const Icon(Icons.search);
                    cusSearchBar = const Text("AppBar");
                  }
                });
              },
              icon: const Icon(Icons.search),
            ),*/
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "CartPages");
              },
              icon: const Icon(Icons.shopping_basket_rounded),
            ),
          ],
          /*leading: BackButton(
            onPressed: () {},
          ),*/
          //back button and drawer is not visible together(need to ask sir)
          title: cusSearchBar,
        ),
        drawer: Drawer(
          backgroundColor: MainColor.whiteColor,
          child: ListView(
            children: [
              ListTile(
                title: const Text(
                  "Login / Sign up", //when a user login it will show user details(need to ask sir)
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "Loginn");
                },
                tileColor: MainColor.backgroundColor,
              ),
              ListTile(
                title: const Text(
                  "Home:", //need to show address of perticular user(need to ask sir)
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                tileColor: MainColor.greyColor,
                leading: const Icon(Icons.home_sharp),
                onTap: () {},
              ),
              const Divider(
                height: 5,
                color: Colors.grey,
              ),
              const Divider(
                height: 5,
                color: Colors.grey,
              ),
              ListTile(
                title: const Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //tileColor: Colors.white,
                onTap: () {},
              ),
              ExpansionTile(
                title: const Text(
                  "My Account", //need plus icon button + (need to ask sir)
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                childrenPadding: const EdgeInsets.only(left: 15),
                children: [
                  ListTile(
                    title: const Text("My Profile"),
                    //tileColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, 'MyProfile');
                    },
                  ),
                  /*ListTile(
                    title: const Text("My Wallet"),
                    //tileColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "MyWallet");
                    },
                  ),*/
                  ListTile(
                    title: const Text("My Orders"),
                    //tileColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "MyOrder");
                    },
                  ),
                  ListTile(
                    title: const Text("Addresses"),
                    //tileColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, "DeliveryAddress");
                    },
                  ),
                ],
              ),
              ListTile(
                title: const Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //tileColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, "CartPages");
                },
              ),
              ListTile(
                title: const Text(
                  "Shop By Category",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //tileColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, "Now");
                },
              ),
              ListTile(
                title: const Text(
                  "Wishlist",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //tileColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  "Help & Support",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //tileColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, "Help");
                },
              ),
              ListTile(
                title: const Text(
                  "FAQs",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //tileColor: Colors.white,
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 10),
              decoration: BoxDecoration(
                color: MainColor.purpleColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.dashboard,
                        size: 30,
                        color: MainColor.whiteColor,
                      ),
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: MainColor.whiteColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 3, bottom: 15),
                    child: Text(
                      "Sam",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: MainColor.whiteColor,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: MainColor.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "search here",
                        hintStyle: TextStyle(
                          color: MainColor.blackColor.withOpacity(0.5),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
      ),
    );
  }
}
