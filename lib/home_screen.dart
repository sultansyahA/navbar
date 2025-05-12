import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final iconList = <IconData>[
    Icons.accessibility,
    Icons.search,
    Icons.punch_clock,
    Icons.shopping_cart,
  ];

  final pages = [
    Center(
      child: Icon(
        Icons.accessibility_outlined,
        size: 180,
        color: const Color.fromARGB(255, 34, 7, 241),
      ),
    ),
    Center(
      child: Icon(
        Icons.search_outlined,
        size: 180,
        color: const Color.fromARGB(255, 51, 9, 239),
      ),
    ),
    Center(
      child: Icon(
        Icons.punch_clock,
        size: 180,
        color: const Color.fromARGB(255, 11, 7, 245),
      ),
    ),
    Center(
      child: Icon(
        Icons.shopping_cart_outlined,
        size: 180,
        color: const Color.fromARGB(255, 41, 6, 237),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: [
            Text(
              'MY APPLICATION',
              style: TextStyle(fontSize: 35, color: Colors.purpleAccent),
            ),
          ],
        ),
        centerTitle: true,
      ),

      body: pages[_currentIndex],
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add, size: 32),
          backgroundColor: const Color.fromARGB(255, 237, 164, 5),
          shape: CircleBorder(),
          elevation: 8,
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: Colors.white,
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
      ),
    );
  }
}
