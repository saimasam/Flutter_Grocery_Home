import 'package:cart/address/address.dart';
import 'package:cart/address/deliveryaddress.dart';
import 'package:cart/address/newaddress.dart';
import 'package:cart/coffee/cartpage.dart';
import 'package:cart/coffee/coffeeshop.dart';
import 'package:cart/coffee/homepage.dart';
import 'package:cart/daily/daily.dart';
import 'package:cart/daily/help.dart';
import 'package:cart/intro_page.dart';
import 'package:cart/login/location.dart';
import 'package:cart/login/loginn.dart';
import 'package:cart/login/phone.dart';
import 'package:cart/login/verifyphone.dart';
import 'package:cart/menu.dart';
import 'package:cart/now/cartpages.dart';
import 'package:cart/now/home.dart';
import 'package:cart/now/itempage.dart';
import 'package:cart/now/now.dart';
import 'package:cart/now/orderpages.dart';
import 'package:cart/payment/mywallet.dart';
import 'package:cart/payment/paymentpage.dart';
import 'package:cart/payment/success.dart';
import 'package:cart/product/productoverview.dart';
import 'package:cart/profile/editprofile.dart';
import 'package:cart/profile/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'IntroPage',
        routes: {
          'IntroPage': (context) => const IntroPage(),
          'Loginn': (context) => const Loginn(),
          'Phone': (context) => const Phone(),
          'VerifyPhone': (context) => const VerifyPhone(),
          'Location': (context) => const Location(),
          'Address': (context) => const Address(),
          'Menu': (context) => const Menu(),
          'Now': (context) => const Now(),
          'Daily': (context) => const Daily(),
          'ProductOverview': (context) => const ProductOverview(
                productImage: '',
                productName: '',
              ),
          'MyProfile': (context) => const MyProfile(),
          //'MyOrder': (context) => const MyOrder(),
          'MyWallet': (context) => const MyWallet(),
          'DeliveryAddress': (context) => DeliveryAddress(),
          'NewAddress': (context) => const NewAddress(),
          'EditProfile': (context) => const EditProfile(),
          'PaymentPage': (context) => const PaymentPage(),
          'Success': (context) => const Success(),

          'ItemPage': (context) => const ItemPage(),
          'Home': (context) => const Home(),
          'CartPages': (context) => const CartPages(),
          'OrderPages': (context) => const OrderPages(),
          'Help': (context) => const Help(),
          'HomePage': (context) => HomePage(),
          'CartPage': (context) => CartPage(),
        },
      ),
    );
  }
}
