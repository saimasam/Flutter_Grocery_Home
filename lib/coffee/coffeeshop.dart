import 'package:cart/coffee/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: "Orange",
      price: "Rs.50",
      imagePath: "assets/1.png",
    ),
    Coffee(
      name: "Apple",
      price: "Rs.100",
      imagePath: "assets/2.png",
    ),
    Coffee(
      name: "Strawberry",
      price: "Rs.250",
      imagePath: "assets/3.png",
    ),
    Coffee(
      name: "Cherry",
      price: "Rs.80",
      imagePath: "assets/4.png",
    ),
  ];
  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToUserCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }

  void addItemToCart(Coffee coffee) {}
}
