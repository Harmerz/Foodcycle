import 'package:flutter/material.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/gen/fonts.gen.dart';
import 'package:foodcycle/hackbiz_icons.dart';
import "../../gen/assets.gen.dart";
import 'package:dotted_border/dotted_border.dart';

class ClasifyScreenTwo extends StatefulWidget {
  const ClasifyScreenTwo({Key? key}) : super(key: key);

  @override
  State<ClasifyScreenTwo> createState() => _ClasifyScreenTwoState();
}

class _ClasifyScreenTwoState extends State<ClasifyScreenTwo> {
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
                    "Mealifying",
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
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Food waste 3 state condition",
                style: TextStyle(
                    fontFamily: FontFamily.urbanist,
                    fontSize: 16,
                    height: 1.6,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(left: 7.5),
              height: 260,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Assets.images.animal.image(fit: BoxFit.fill),
                      )),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 7.5),
                            child:
                                Assets.images.eatable.image(fit: BoxFit.fill),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(top: 7.5),
                            child:
                                Assets.images.uneatable.image(fit: BoxFit.fill),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "With",
                style: TextStyle(
                  fontFamily: FontFamily.urbanist,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: ColorName.greyPrimary,
                ),
              ),
            ),
            Container(
              child: Text(
                "Image Processing",
                style: TextStyle(
                  fontFamily: FontFamily.urbanist,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorName.blackPrymary,
                ),
              ),
            ),
            Container(
              child: Text(
                "Please input photo into our system to classify ",
                style: TextStyle(
                  fontFamily: FontFamily.urbanist,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorName.blackPrymary,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: DottedBorder(
                dashPattern: [10, 5],
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                padding: EdgeInsets.all(4),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Container(
                    height: 91,
                    width: double.infinity,
                    color: ColorName.canvasPrimary,
                    child: Center(
                      child: Text(
                        "Select files from your device",
                        style: TextStyle(
                          fontFamily: FontFamily.urbanist,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ColorName.greyPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: new GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const ()),
                  // );
                },
                child: new Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  width: 240,
                  height: 43,
                  decoration: BoxDecoration(
                      color: ColorName.yellowPrimary,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "See Result",
                      style: TextStyle(
                        fontFamily: FontFamily.urbanist,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: ColorName.blackPrymary,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ]),
    ));
  }
}
