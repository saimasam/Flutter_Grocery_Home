import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget listTile({required IconData icon, required String title}) {
    return Column(
      children: [
        const Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.backgroundColor,
      appBar: AppBar(
        title: const Text(
          '   My Profile',
          style: TextStyle(),
        ),
        backgroundColor: MainColor.backgroundColor,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: MainColor.backgroundColor,
              ),
              Container(
                height: 595, //407
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: MainColor.whiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    //bottomLeft: Radius.circular(30),
                    //bottomRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: const EdgeInsets.only(
                              left: 0, right: 100, top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sam",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: MainColor.blackColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "sam@gmail.com",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 0,
                              right: 50,
                              bottom: 0,
                            ),
                            child: Center(
                              child: CircleAvatar(
                                backgroundColor: MainColor.backgroundColor,
                                radius: 25,
                                child: IconButton(
                                  color: MainColor.blackColor,
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'EditProfile');
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    size: 20,
                                  ), //Need to add Hint Text here(Ask Sir)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 0, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 360,
                                decoration: BoxDecoration(
                                  color: MainColor.greyColor,
                                  borderRadius: BorderRadius.horizontal(),
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'My Orders',
                                      style: TextStyle(
                                        color: MainColor.whiteColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
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
                      padding: const EdgeInsets.only(left: 0, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "DeliveryAddress");
                              },
                              child: Container(
                                height: 50,
                                width: 360,
                                decoration: BoxDecoration(
                                  color: MainColor.greyColor,
                                  borderRadius: BorderRadius.horizontal(),
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
                                    'My Delivery Address',
                                    style: TextStyle(
                                      color: MainColor.whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
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
                      padding: const EdgeInsets.only(left: 0, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 360,
                                decoration: BoxDecoration(
                                  color: MainColor.greyColor,
                                  borderRadius: BorderRadius.horizontal(),
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
                                    'Terms & Conditions',
                                    style: TextStyle(
                                      color: MainColor.whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
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
                      padding: const EdgeInsets.only(left: 0, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "Help");
                              },
                              child: Container(
                                height: 50,
                                width: 360,
                                decoration: BoxDecoration(
                                  color: MainColor.greyColor,
                                  borderRadius: BorderRadius.horizontal(),
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
                                    'Help & Support',
                                    style: TextStyle(
                                      color: MainColor.whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
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
                      padding: const EdgeInsets.only(left: 0, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 360,
                                decoration: BoxDecoration(
                                  color: MainColor.greyColor,
                                  borderRadius: BorderRadius.horizontal(),
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
                                    'About',
                                    style: TextStyle(
                                      color: MainColor.whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /*Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: listTile(
                        icon: Icons.shop_outlined,
                        title: "My Orders",
                      ),
                    ),
                    listTile(
                      icon: Icons.location_on_outlined,
                      title: "My Delivery Address",
                    ),
                    listTile(
                      icon: Icons.person_outlined,
                      title: "Refer a Friends",
                    ),
                    listTile(
                      icon: Icons.shop_outlined,
                      title: "Terms & Conditions",
                    ),
                    listTile(
                      icon: Icons.policy_outlined,
                      title: "Privacy Policy",
                    ),
                    listTile(
                      icon: Icons.add_chart,
                      title: "About",
                    ),*/
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: MainColor.backgroundColor,
              child: CircleAvatar(
                backgroundImage: const NetworkImage("assets/ss.png"),
                radius: 45,
                backgroundColor: MainColor.lightpinkColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
