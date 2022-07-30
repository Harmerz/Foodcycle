import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodcycle/Page/Mealify/ClasifyScreen.dart';
import 'package:foodcycle/Page/Mealify/clasify.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/gen/fonts.gen.dart';
import 'package:foodcycle/hackbiz_icons.dart';
import 'package:image_picker/image_picker.dart';
import "../../gen/assets.gen.dart";
import 'package:dotted_border/dotted_border.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ClasifyError extends StatelessWidget {
  final File _image;
  var resultPost;
  // ignore: use_key_in_widget_constructors
  ClasifyError(this._image, this.resultPost);

  @override
  Widget build(BuildContext context) {
    print(resultPost);
    return Scaffold(
        body: SafeArea(
      child: ListView(padding: EdgeInsets.all(30), children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recomendation",
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
            margin: EdgeInsets.only(top: 15),
            child: DottedBorder(
                dashPattern: [10, 5],
                borderType: BorderType.RRect,
                radius: Radius.circular(5),
                padding: EdgeInsets.all(4),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Image.file(
                    _image,
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              "Classifying Result",
              style: TextStyle(
                fontFamily: FontFamily.urbanist,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorName.blackPrymary,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text(
              "Trough our classifying system this food state condition is: ",
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
              color: Colors.red,
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
                      "Sorry try again",
                      style: TextStyle(
                        fontFamily: FontFamily.urbanist,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(children: [
            Flexible(
                flex: 1,
                child: new GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorName.greyPrimary),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        "Retry",
                        style: TextStyle(
                          fontFamily: FontFamily.urbanist,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorName.greyPrimary,
                        ),
                      ),
                    ),
                  ),
                )),
            Flexible(
              flex: 1,
              child: new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ClasifyScreen()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 8),
                  height: 40,
                  decoration: BoxDecoration(
                    color: ColorName.yellowPrimary,
                    border: Border.all(color: ColorName.yellowPrimary),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      "Exit",
                      style: TextStyle(
                        fontFamily: FontFamily.urbanist,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorName.blackPrymary,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ])
        ])
      ]),
    ));
  }
}
