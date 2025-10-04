import 'package:flutter/material.dart';
import 'package:jp_app/src/features/order/j_p_app_slanted_box.dart';
import 'package:jp_app/src/features/order/j_p_app_slanted_box_builder.dart';
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
                Positioned(
                  top: 160,
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("data"),
                    ),
                  ),
                ),
                Positioned(top: 100, child: JPAppSlantedBoxBuilder()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
