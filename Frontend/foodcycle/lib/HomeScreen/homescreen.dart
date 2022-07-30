// import 'package:blom_tau/Welcome/Welcome2.dart';
import 'package:flutter/material.dart';
import 'package:foodcycle/Page/Mealify/SellWelcomeScreen.dart';
import 'package:foodcycle/Welcome/WelcomeKedua.dart';
import 'package:foodcycle/gen/assets.gen.dart';
import 'package:foodcycle/gen/colors.gen.dart';
import 'package:foodcycle/gen/fonts.gen.dart';
import 'package:foodcycle/navigasi.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                          fontFamily: FontFamily.josefinsSans,
                          fontSize: 26,
                          height: 1.4,
                          color: ColorName.greyPrimary,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Adzkia Khansa",
                      style: TextStyle(
                          fontFamily: FontFamily.josefinsSans,
                          fontSize: 26,
                          color: ColorName.blackPrymary,
                          height: 1.4,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Assets.images.profile.image(),
              )
            ],
          ),
          new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SellWelcomeScreen()),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              height: 300,
              width: double.infinity,
              child: Assets.images.home.image(fit: BoxFit.fill),
            ),
          ),
          Expanded(
            // height: 155,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 155,
                      child: Assets.images.home1.image(),
                    ),
                    Container(
                      height: 200,
                      width: 155,
                      child: Assets.images.home2.image(),
                    ),
                    Container(
                      height: 200,
                      width: 155,
                      child: Assets.images.home3.image(),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
