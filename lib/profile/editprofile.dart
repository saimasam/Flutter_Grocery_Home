import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Icon cusIcon = const Icon(Icons.search);
  Widget cusSearchBar = const Text("My Profile");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: MainColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: MainColor.backgroundColor,
          centerTitle: true,
          actions: [
            IconButton(
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
                            Radius.elliptical(100, 100),
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
                    cusSearchBar = const Text("My Profile");
                  }
                });
              },
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_basket_rounded),
            ),
          ],
          leading: BackButton(
            onPressed: () {
              Navigator.pushNamed(context, 'Now');
            },
          ),
        ),
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 390,
                    decoration: BoxDecoration(
                      color: MainColor.lightblueColor,
                      borderRadius: const BorderRadius.vertical(),
                    ),
                    child: Center(
                        child: Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: MainColor.blackColor,
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ListView(
                children: <Widget>[
                  imageProfile(),
                  const SizedBox(
                    height: 20,
                  ),
                  nameTextField(),
                  const SizedBox(
                    height: 20,
                  ),
                  emailTextField(),
                  const SizedBox(
                    height: 20,
                  ),
                  mobileTextField(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 420,
                ),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: MainColor.whiteColor,
                    radius: 25,
                    child: IconButton(
                      color: MainColor.blackColor,
                      onPressed: () {
                        Navigator.pushNamed(context, 'Loginn');
                      },
                      icon: Icon(
                          Icons.logout), //Need to add Hint Text here(Ask Sir)
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

  Widget imageProfile() {
    return const Padding(
      padding: EdgeInsets.only(top: 30),
      child: Center(
        child: Stack(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/ss.png'),
            ),
            /*Positioned(
              bottom: 10,
              right: 10,
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.teal,
                  size: 28,
                ),
              ),(this is for changing the profile pic)
            ),*/
          ],
        ),
      ),
    );
  }

  Widget nameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: MainColor.tealColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: MainColor.lightblueColor,
            width: 2,
          ),
        ),
        prefixIcon: const Icon(
          Icons.person,
          color: Colors.amber,
        ),
        labelText: "Name",
        labelStyle: TextStyle(fontSize: 20),
        helperText: "Name can't be empty",
        hintText: "Dev Stack",
      ),
    );
  }

  Widget emailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: MainColor.tealColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: MainColor.lightblueColor,
            width: 3,
          ),
        ),
        prefixIcon: const Icon(
          Icons.email,
          color: Colors.amber,
        ),
        labelText: "Email",
        labelStyle: TextStyle(fontSize: 20),
        helperText: "Email can't be empty",
        hintText: "DevStack@gmail.com",
      ),
    );
  }

  Widget mobileTextField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: MainColor.tealColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: MainColor.lightblueColor,
            width: 4,
          ),
        ),
        prefixIcon: const Icon(
          Icons.phone_enabled,
          color: Colors.amber,
        ),
        labelText: "Mobile Number",
        labelStyle: TextStyle(fontSize: 20),
        helperText: "Mobile Number can't be empty",
        hintText: "6644332288",
      ),
    );
  }
}
