import 'package:flutter/material.dart';
import 'package:foodcycle/HomeScreen/Buy.dart';
import 'package:foodcycle/HomeScreen/Plus.dart';
import 'package:foodcycle/HomeScreen/homescreen.dart';
import 'package:foodcycle/Page/Mealify/ClasifyScreen.dart';
import 'package:foodcycle/Page/Mealify/SellWelcomeScreen.dart';
import 'package:foodcycle/Welcome/WelcomeKedua.dart';
import 'package:foodcycle/Welcome/WelcomeKetiga.dart';
import 'package:foodcycle/Welcome/WelcomePertama.dart';
import 'package:foodcycle/Welcome/WelcomeTerakhir.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/hackbiz_icons.dart';
// import 'package:blom_tau/home.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({Key? key}) : super(key: key);

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SellWelcomeScreen(),
    Buy(),
    Plus(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Hackbiz.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Hackbiz.scan),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Hackbiz.buy),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Hackbiz.plus),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorName.blackPrymary,
        unselectedItemColor: ColorName.greyPrimary,
        onTap: _onItemTapped,
      ),
    );
  }
}
