import 'AccountPage.dart';
import 'notificationPage.dart';
import 'package:flutter/material.dart';
import 'empty_cart.dart';
import 'categorypage.dart';
import 'homepage.dart';

class BottomNavPage extends StatefulWidget {
  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int currentindex = 0;
  List<Widget> pages = [
    HomePage(),
    CategoryPage(),
    NotificationPage(),
    AccountPage(),
    EmptyCart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      IndexedStack(index: currentindex, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: "notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
