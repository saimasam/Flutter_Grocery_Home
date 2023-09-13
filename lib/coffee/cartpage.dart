import 'package:cart/coffee/coffee.dart';
import 'package:cart/coffee/coffee_tile.dart';
import 'package:cart/coffee/coffeeshop.dart';
import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading
              Text(
                "Your Cart",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 50),
              //list of cart items
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    //get individual cart item
                    Coffee eachCoffee = value.userCart[index];

                    //return coffee tile
                    return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => removeFromCart(eachCoffee),
                      icon: Icon(Icons.delete),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "PaymentPage");
                        },
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: MainColor.greyColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                color: Colors.white,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Check Out',
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
              //Container(
//
              //  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              //  decoration: BoxDecoration(
              //    color: MainColor.greenColor,
              //    borderRadius: BorderRadius.circular(10),
              //  ),
              //  child: Text(
              //    "Check Out",
              //    style: TextStyle(
              //      fontSize: 20,
              //      fontWeight: FontWeight.bold,
              //      color: MainColor.whiteColor,
              //    ),
              //  ),
              //),
            ],
          ),
        ),
      ),
    );
  }
}
