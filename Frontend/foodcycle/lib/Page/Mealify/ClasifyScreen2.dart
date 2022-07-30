import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodcycle/Page/Mealify/clasify.dart';
import 'package:foodcycle/Page/Mealify/clasifyerror.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/gen/fonts.gen.dart';
import 'package:foodcycle/hackbiz_icons.dart';
import 'package:image_picker/image_picker.dart';
import "../../gen/assets.gen.dart";
import 'package:dotted_border/dotted_border.dart';

class ClasifyScreenTwo extends StatefulWidget {
  const ClasifyScreenTwo({Key? key}) : super(key: key);

  @override
  State<ClasifyScreenTwo> createState() => _ClasifyScreenTwoState();
}

class _ClasifyScreenTwoState extends State<ClasifyScreenTwo> {
  File? _image;
  List<int>? imageBytes;
  String? namefile;
  File? imageInfo;
  var dataJson;
// FilePickerResult? result = await FilePicker.platform.pickFiles();
  Future getImage() async {
    try {
      final image = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'jpeg', 'png', 'JPG', 'PNG', 'HEIC'],
      );
      if (image == null) return;

      final File imageTemp = File(image.files.first.path.toString());
      setState(() {
        this._image = imageTemp;
        this.namefile = image.files.first.name.toString();
      });

      imageBytes = await imageTemp.readAsBytes();
      String base64Image = base64Encode(imageBytes!);
      print(base64Image);
      dataJson = {
        "image": base64Image,
      };
    } on PlatformException catch (e) {
      print("failed because " + e.toString());
    }
  }

  var url = "http://10.0.2.2:3000/predict-meal";
  Future<String> postRequest() async {
    try {
      HttpClient httpClient = new HttpClient();
      HttpClientRequest request = await httpClient.postUrl(Uri.parse(url));
      request.headers.set('content-type', 'application/json');
      request.add(utf8.encode(json.encode(dataJson)));
      HttpClientResponse response = await request.close();
      httpClient.connectionTimeout = const Duration(seconds: 5);
      // todo - you should check the response.statusCode
      String reply = await response.transform(utf8.decoder).join();
      httpClient.close();
      return reply;
    } on TimeoutException catch (e) {
      print(e.toString());
      return ("error");
    } on SocketException catch (e) {
      print(e.toString());
      return ("error");
    }
  }

  var resultPost;
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
            new GestureDetector(
              onTap: () {
                getImage();
              },
              child: Container(
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
                          namefile != null
                              ? namefile.toString()
                              : "Select files from your device",
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
            ),
            Center(
              child: new GestureDetector(
                onTap: () async {
                  resultPost = await postRequest();
                  resultPost == "error"
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ClasifyError(_image!, resultPost!)),
                        )
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SecondsScreenWithData(_image!, resultPost!)),
                        );
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
