// import 'package:blom_tau/home.dart';
// import 'package:blom_tau/Profile/profile.dart';
// import 'package:blom_tau/Report/report.dart';
// import 'package:flutter/material.dart';
// import 'package:blom_tau/icons_gan_icons.dart';
// import 'package:blom_tau/maps.dart';
// // import 'package:blom_tau/home.dart';

// class NaviBar extends StatefulWidget {
//   const NaviBar({Key? key}) : super(key: key);

//   @override
//   State<NaviBar> createState() => _NaviBarState();
// }

// class _NaviBarState extends State<NaviBar> {
//   int _selectedIndex = 0;

//   var iconhome = IconsGan.homeselected;
//   var iconloc = IconsGan.locationunselected;
//   var iconrep = IconsGan.reportunselected;
//   var iconpro = IconsGan.profileunselected;
//   var warna = Colors.black;
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;

//       switch (_selectedIndex) {
//         case 0:
//           iconhome = IconsGan.homeselected;
//           iconloc = IconsGan.locationunselected;
//           iconrep = IconsGan.reportunselected;
//           iconpro = IconsGan.profileunselected;
//           warna = Colors.black;
//           break;
//         case 1:
//           iconhome = IconsGan.homeunselected;
//           iconloc = IconsGan.locationselected;
//           iconrep = IconsGan.reportunselected;
//           iconpro = IconsGan.profileunselected;
//           warna = Colors.black;
//           break;
//         case 2:
//           iconhome = IconsGan.homeunselected;
//           iconloc = IconsGan.locationunselected;
//           iconrep = IconsGan.reportselected;
//           iconpro = IconsGan.profileunselected;
//           warna = Colors.white;
//           break;
//         case 3:
//           iconhome = IconsGan.homeunselected;
//           iconloc = IconsGan.locationunselected;
//           iconrep = IconsGan.reportunselected;
//           iconpro = IconsGan.profileselected;
//           warna = Colors.white;
//           break;
//       }
//     });
//   }

//   testname() {
//     return (<BottomNavigationBarItem>[
//       BottomNavigationBarItem(
//         icon: Icon(iconhome),
//         label: '.',

//         // backgroundColor: Colors.white,
//         // selec
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(iconloc),
//         label: '.',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(iconrep),
//         label: '.',
//         backgroundColor: Color(0x00ffffff),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(iconpro),
//         label: '.',
//         backgroundColor: Color(0x00ffffff),
//       ),
//     ]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       extendBody: true,
//       extendBodyBehindAppBar: true,
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: const [
//           HomePage(),
//           MapsPage(),
//           ReportPage(),
//           ProfilePage(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 0,
//         items: testname(),
//         currentIndex: _selectedIndex,
//         selectedItemColor: warna,
//         unselectedItemColor: warna,
//         showSelectedLabels: true,
//         showUnselectedLabels: false,
//         selectedLabelStyle: const TextStyle(fontSize: 20),
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
