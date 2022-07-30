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
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:foodcycle/Page/Mealify/ClasifyScreen2.dart';
import 'package:foodcycle/Page/Mealify/SellWelcomeScreen.dart';
import 'package:foodcycle/Welcome/WelcomePertama.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:web_socket_channel/io.dart';
import 'package:http/http.dart' as http;

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return const MaterialApp(
      home: Scaffold(
        body: WelcomePertama(),
      ),
    );
  }
}
