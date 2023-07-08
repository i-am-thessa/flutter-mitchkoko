import 'package:coffeeshop/components/bottom_nav_bar.dart';
import 'package:coffeeshop/pages/cart_page.dart';
import 'package:coffeeshop/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:coffeeshop/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar:
          MyBottomNavBar(onTabChange: (index) => navigateBottomBar(index)),
      body: pages[selectedIndex],
    );
  }
}
