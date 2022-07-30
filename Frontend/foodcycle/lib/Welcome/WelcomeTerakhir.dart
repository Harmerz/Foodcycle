// import 'package:blom_tau/Welcome/Welcome2.dart';
import 'package:flutter/material.dart';
import 'package:foodcycle/HomeScreen/homescreen.dart';
import 'package:foodcycle/Welcome/WelcomeKedua.dart';
import 'package:foodcycle/gen/assets.gen.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/gen/fonts.gen.dart';
import 'package:foodcycle/navigasi.dart';

class WelcomeTerakhir extends StatefulWidget {
  const WelcomeTerakhir({Key? key}) : super(key: key);

  @override
  State<WelcomeTerakhir> createState() => _WelcomeTerakhirState();
}

class _WelcomeTerakhirState extends State<WelcomeTerakhir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Assets.images.logo.image(),
            ),
            Center(
              child: Container(
                width: 326,
                height: 300,
                child: Assets.images.screen4.image(),
              ),
            ),
            Center(
              child: Container(
                width: 300,
                child: Text(
                  "Start your day with foodcycle features",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: FontFamily.josefinsSans,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      height: 1.4),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 50),
                width: 300,
                child: Text(
                  "Don’t forget the various feature of Foodcycle consist of: food waste classifying, food waste shops, and your own food waste store. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: FontFamily.urbanist,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.4),
                ),
              ),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NaviBar()),
                  );
                },
                child: Center(
                  child: Container(
                    width: 240,
                    height: 43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: ColorName.yellowPrimary,
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: FontFamily.urbanist,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 1.6),
                      ),
                    ),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
