import 'package:flutter/material.dart';
import 'package:hotelapp1/view/favourite_screen/favourite_screen.dart';
import 'package:hotelapp1/view/home_screen/home_screen.dart';
import 'package:hotelapp1/view/setting_screen/setting_screen.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectedIndex = 0;
  List tabScreen  = [
    HomeScreen(),
    FavouriteScreen(),
    SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Constantcolor.PRIMARY,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Stays"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourites"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
      ],
      currentIndex: selectedIndex,
      onTap: (value) {
        selectedIndex =value;
        setState(() {
          
        });
      },
      ),
      body: tabScreen[selectedIndex],
    );
  }
}


      