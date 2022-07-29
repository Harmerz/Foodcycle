// import 'package:blom_tau/Welcome/Welcome2.dart';
import 'package:flutter/material.dart';
import 'package:foodcycle/Welcome/WelcomeKedua.dart';
import 'package:foodcycle/Welcome/WelcomeKetiga.dart';
import 'package:foodcycle/gen/assets.gen.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/gen/fonts.gen.dart';

class WelcomeKedua extends StatefulWidget {
  const WelcomeKedua({Key? key}) : super(key: key);

  @override
  State<WelcomeKedua> createState() => _WelcomeKeduaState();
}

class _WelcomeKeduaState extends State<WelcomeKedua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Assets.images.logo.image(),
            ),
            Center(
              child: Container(
                width: 326,
                height: 300,
                child: Assets.images.screen2.image(),
              ),
            ),
            Center(
              child: Container(
                width: 300,
                child: Text(
                  "Cheaper & safe for environment  ",
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
                margin: EdgeInsets.fromLTRB(0, 15, 0, 50),
                width: 300,
                child: Text(
                  "Safe the environment and help improving circular economy in your neighborhood",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: FontFamily.urbanist,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.4),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorName.lightgreyPrimary,
                      ),
                      height: 12,
                      width: 12,
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorName.yellowPrimary,
                      ),
                      height: 12,
                      width: 12,
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorName.lightgreyPrimary,
                      ),
                      height: 12,
                      width: 12,
                    ),
                  ]),
                ),
                Expanded(child: Container()),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeKetiga()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: ColorName.yellowPrimary,
                    ),
                    child: Center(
                      child: Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: FontFamily.urbanist,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 1.6),
                      ),
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
