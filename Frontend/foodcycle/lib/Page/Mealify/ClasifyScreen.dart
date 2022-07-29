import 'package:flutter/material.dart';
import 'package:foodcycle/Page/Mealify/ClasifyScreen2.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/gen/fonts.gen.dart';
import 'package:foodcycle/hackbiz_icons.dart';
import "../../gen/assets.gen.dart";

class ClasifyScreen extends StatefulWidget {
  const ClasifyScreen({Key? key}) : super(key: key);

  @override
  State<ClasifyScreen> createState() => _ClasifyScreenState();
}

class _ClasifyScreenState extends State<ClasifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(padding: EdgeInsets.all(30), children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mealification",
                    style: TextStyle(
                        fontFamily: FontFamily.josefinsSans,
                        fontSize: 24,
                        height: 1.4,
                        fontWeight: FontWeight.w700),
                  ),
                  Assets.images.profile.image(),
                ],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ClasifyScreenTwo()),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: 56,
                decoration: BoxDecoration(
                    color: ColorName.yellowPrimary,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: double.infinity,
                child: Center(
                  child: Row(
                    children: [
                      Icon(Hackbiz.scan),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Start Mealify",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: FontFamily.urbanist,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Hackbiz.arrow_right2),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                "Categories",
                style: TextStyle(
                    fontFamily: FontFamily.urbanist,
                    fontSize: 24,
                    height: 1.4,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Assets.images.clasifymenu1
                  .image(height: 120, width: double.infinity, fit: BoxFit.fill),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Assets.images.clasifymenu2
                  .image(height: 120, width: double.infinity, fit: BoxFit.fill),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Assets.images.clasifymenu3
                  .image(height: 120, width: double.infinity, fit: BoxFit.fill),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Assets.images.clasifymenu4
                  .image(height: 120, width: double.infinity, fit: BoxFit.fill),
            )
          ],
        )
      ]),
    ));
  }
}
