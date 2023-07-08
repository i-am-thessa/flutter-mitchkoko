import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  /* For Sale List */
  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black',
      price: '4.10',
      imagePath: 'images/black.png',
    ),
    Coffee(
      name: 'Latte',
      price: '4.20',
      imagePath: 'images/latte.png',
    ),
    Coffee(
      name: 'Espresso',
      price: '3.50',
      imagePath: 'images/espresso.png',
    ),
    Coffee(
      name: 'Iced Coffee',
      price: '4.40',
      imagePath: 'images/iced_coffee.png',
    ),
  ];

  /* User Cart */
  final List<Coffee> _userCart = [];

  /* Get Coffee List */
  List<Coffee> get coffeeShop => _shop;

  /* Get User Cart */
  List<Coffee> get userCart => _userCart;

  /* Add Item To Cart */
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  /* Remove Item From Cart */
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
