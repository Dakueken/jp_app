import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/src/features/order/categories_button.dart';
import 'package:jp_app/src/features/order/j_p_app_slanted_box_builder.dart';
import 'package:jp_app/src/features/order/recommended_container.dart';
import 'package:jp_app/src/features/shared/j_p_app_background_picture.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({super.key});

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          JPAppBackgroundPicture(
            backgroundpicture: "lib/assets/hintergründe/bg_mainscreen.png",
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Stack(
              children: [
                Positioned(
                  top: 75,
                  child: SizedBox(
                    width: 300,
                    child: Text(
                      "Choose Your Favorite Snack",
                      softWrap: true,
                      style: TextStyle(
                        height: 1,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(top: 160, child: CategoriesButton()),
                Positioned(top: 100, child: JPAppSlantedBoxBuilder()),
                Positioned(
                  top: 550,
                  child: Text(
                    "We Recommend",
                    style: TextStyle(
                      fontFamily: "SanFrancisco",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(top: 600, child: RecommendedContainer()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
