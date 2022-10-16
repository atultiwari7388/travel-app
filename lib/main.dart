import 'package:flutter/material.dart';
import 'package:travel_app_with_block/view/BottomNavBarScreens/main_screen.bottomnavbar.view.dart';
import 'package:travel_app_with_block/view/Welcome/welcome_screen.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
