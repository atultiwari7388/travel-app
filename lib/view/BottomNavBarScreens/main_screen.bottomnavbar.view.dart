import 'package:flutter/material.dart';
import 'package:travel_app_with_block/view/BottomNavBarScreens/bar_items_screens.bottomnavbarscreen.view.dart';
import 'package:travel_app_with_block/view/BottomNavBarScreens/home_screen.bottombar.view.dart';
import 'package:travel_app_with_block/view/BottomNavBarScreens/my_screen.bottomnavbarscreen.view.dart';
import 'package:travel_app_with_block/view/BottomNavBarScreens/search_screen.bottom_navbar_screens.view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = const [
    HomeScreen(),
    BarItemsScreen(),
    SearchScreen(),
    MyScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 1,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp), label: "Bar"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "My"),
        ],
      ),
    );
  }
}
