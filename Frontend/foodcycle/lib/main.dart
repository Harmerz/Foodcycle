// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImagePicture(),
    );
  }
}

class ImagePicture extends StatefulWidget {
  const ImagePicture({Key? key}) : super(key: key);

  @override
  State<ImagePicture> createState() => _ImagePictureState();
}

class _ImagePictureState extends State<ImagePicture> {
  // final ImagePicker _picker = ImagePicker();
  File? _image;
  Uint8List? imageBytes;
  Future getImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final File imageTemp = File(image.path);
      print(imageTemp);
      setState(() {
        this._image = imageTemp;
      });
      imageBytes = await imageTemp.readAsBytes();
      String base64Image = base64Encode(imageBytes!);
      print(base64Image);
    } on PlatformException catch (e) {
      print("failed lur");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            new GestureDetector(
              onTap: () {
                getImage();
              },
              child: Container(
                margin: EdgeInsets.only(top: 200),
                height: 40,
                width: 200,
                color: ColorName.yellowPrimary,
              ),
            ),
            _image != null
                ? Image.file(
                    _image!,
                    width: 200,
                    height: 200,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
