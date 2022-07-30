// import 'package:blom_tau/Welcome/Welcome2.dart';
import 'package:flutter/material.dart';
import 'package:foodcycle/Welcome/WelcomeKetiga.dart';
import 'package:foodcycle/Welcome/WelcomeKetiga.dart';
import 'package:foodcycle/Welcome/WelcomeTerakhir.dart';
import 'package:foodcycle/gen/assets.gen.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/gen/fonts.gen.dart';

class WelcomeKetiga extends StatefulWidget {
  const WelcomeKetiga({Key? key}) : super(key: key);

  @override
  State<WelcomeKetiga> createState() => _WelcomeKetigaState();
}

class _WelcomeKetigaState extends State<WelcomeKetiga> {
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
                child: Assets.images.screen3.image(),
              ),
            ),
            Center(
              child: Container(
                width: 300,
                child: Text(
                  "Sell your own waste management",
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
                  "Exchange your food waste into our foodcycle point in simple and easy way",
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
                  ]),
                ),
                Expanded(child: Container()),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeTerakhir()),
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
