import 'package:flutter/material.dart';

import 'package:login_sigin/pages/subpages/favorite.dart';
import 'package:login_sigin/provider/provider.dart';
import 'package:provider/provider.dart';

import 'subpages/home_screen_item.dart';
import 'package:badges/badges.dart' as badges;
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomeScreenItem(),
    const Favoirte(), // Corrected the typo 'Favoirte' to 'Favorite'
  ];
  List<BottomNavigationBarItem> items =  [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem
  (icon: Consumer<CartBag>(builder: (context, value, child) {
      return badges.Badge(child: Icon(Icons.shopping_bag),badgeContent: Text(value.cart_items.length.toString()),badgeAnimation: badges.BadgeAnimation.fade(disappearanceFadeAnimationDuration: Duration(seconds :1),));
    },
  ),
      label: "Cart"
    ),

    // BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body: pages[currentIndex],


      bottomNavigationBar: BottomNavigationBar(
      items: items,
      backgroundColor: Colors.black87.withOpacity(0.8),
      unselectedItemColor: Colors.blue,
      selectedItemColor: Colors.green,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
          // No need to use Navigator.push here
        }
        );

      },
    )


    );
  }
}
