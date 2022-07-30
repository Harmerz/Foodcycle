// import 'package:blom_tau/Welcome/Welcome2.dart';
import 'package:flutter/material.dart';
import 'package:foodcycle/Welcome/WelcomeKedua.dart';
import 'package:foodcycle/gen/assets.gen.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/gen/fonts.gen.dart';
import 'package:foodcycle/navigasi.dart';

import '../hackbiz_icons.dart';

class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(child: Text("COMING SOON")
          // children: [
          //   Container(
          //     padding: EdgeInsets.all(20),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "Food Waste Shops",
          //           style: TextStyle(
          //               fontFamily: FontFamily.josefinsSans,
          //               fontSize: 24,
          //               height: 1.4,
          //               fontWeight: FontWeight.w700),
          //         ),
          //         Icon(Hackbiz.bag2),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     padding: EdgeInsets.all(20),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: [
          //         Container(
          //           width: 35,
          //           height: 35,
          //           decoration: BoxDecoration(
          //               color: ColorName.canvasPrimary,
          //               borderRadius: BorderRadius.all(Radius.circular(20))),
          //           child: Icon(
          //             Hackbiz.filter,
          //             color: ColorName.greyPrimary,
          //           ),
          //         ),
          //         TextFormField(
          //           decoration: InputDecoration(
          //               icon: Icon(Hackbiz.search),
          //               hintText: "Food/waste/product"),
          //         )
          //       ],
          //     ),
          //   ),
          // ],
          ),
    );
  }
}
