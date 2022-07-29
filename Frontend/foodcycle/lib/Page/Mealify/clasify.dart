// class ImagePicture extends StatefulWidget {
//   const ImagePicture({Key? key}) : super(key: key);

//   @override
//   State<ImagePicture> createState() => _ImagePictureState();
// }

// class _ImagePictureState extends State<ImagePicture> {

//   // final ImagePicker _picker = ImagePicker();
// File? _image;
// Uint8List? imageBytes;
// Future getImage() async {
//   try {
//     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (image == null) return;

//     final File imageTemp = File(image.path);
//     print(imageTemp);
//     setState(() {
//       this._image = imageTemp;
//     });
//     imageBytes = await imageTemp.readAsBytes();
//     String base64Image = base64Encode(imageBytes!);
//     print(base64Image);
//   } on PlatformException catch (e) {
//     print("failed lur");
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             new GestureDetector(
//               onTap: () {
//                 sendMessage();
//               },
//               child: Container(
//                 margin: const EdgeInsets.only(top: 200),
//                 height: 40,
//                 width: 200,
//                 color: ColorName.yellowPrimary,
//               ),
//             ),
//             _image != null
//                 ? Image.file(
//                     _image!,
//                     width: 200,
//                     height: 200,
//                   )
//                 : Container(),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodcycle/Page/Mealify/clasify.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/gen/fonts.gen.dart';
import 'package:foodcycle/hackbiz_icons.dart';
import 'package:image_picker/image_picker.dart';
import "../../gen/assets.gen.dart";
import 'package:dotted_border/dotted_border.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Welcome {
  final String name;
  final String prob;
  Welcome({required this.name, required this.prob});
  Welcome.fromJson(Map<String, dynamic> data)
      : name = data['class_name'],
        prob = data['probability'];
}

class SecondsScreenWithData extends StatelessWidget {
  final File _image;
  var resultPost;

  // ignore: use_key_in_widget_constructors
  SecondsScreenWithData(this._image, this.resultPost);

  @override
  Widget build(BuildContext context) {
    print(resultPost);
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
                  radius: Radius.circular(12),
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
              width: double.infinity,
              height: 43,
              decoration: BoxDecoration(
                  color: ColorName.greenPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: Text(
                  "Eatable only for animals",
                  style: TextStyle(
                    fontFamily: FontFamily.urbanist,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                // print((await postRequest()));
              },
              child: Container(
                color: ColorName.blackPrymary,
                width: 200,
                height: 50,
              ),
            )
          ],
        )
      ]),
    ));
  }
}
