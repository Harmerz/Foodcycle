import 'package:flutter/material.dart';
import 'package:foodcycle/Page/Mealify/ClasifyScreen.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import "../../gen/assets.gen.dart";

class SellWelcomeScreen extends StatefulWidget {
  const SellWelcomeScreen({Key? key}) : super(key: key);

  @override
  State<SellWelcomeScreen> createState() => _SellWelcomeScreenState();
}

class _SellWelcomeScreenState extends State<SellWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Assets.images.sellWelcomeScreen.image(),
          ),
          const SizedBox(
            width: 320,
            child: Text(
              "Start mealifying your food waste",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w700, height: 1.4),
            ),
          ),
          const SizedBox(
            width: 320,
            child: Text(
              "into 3 types of waste that can be reuse with certain condition",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, height: 1.4),
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ClasifyScreen()),
              );
            },
            child: new Container(
              margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
              width: 240,
              height: 43,
              decoration: BoxDecoration(
                  color: ColorName.yellowPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Align(
                alignment: Alignment.center,
                child: Text("Get Started"),
              ),
            ),
          )
        ],
      )),
    );
  }
}
