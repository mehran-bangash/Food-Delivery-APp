import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/profile.dart';
import 'package:food_delivery_app/Pages/wallet.dart';

import 'home.dart';
import 'order.dart';

class BottomNavState extends StatefulWidget {
  const BottomNavState({super.key});

  @override
  State<BottomNavState> createState() => _BottomNavStateState();
}

class _BottomNavStateState extends State<BottomNavState> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentpage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = Home();
    profile = Profile();
    order = Order();
    wallet = Wallet();
    pages = [homepage, profile, order, wallet];
    currentpage = homepage; // Set the initial page
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.black,
          height: 65,
          animationDuration: const Duration(microseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
              currentpage = pages[currentTabIndex]; // Update the current page
            });
          },
          items: const [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.wallet_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outlined,
              color: Colors.white,
            ),
          ]),
      body: currentpage, // Display the current page
    );
  }
}
