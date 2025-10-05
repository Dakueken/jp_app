import 'package:flutter/material.dart';
import 'package:jp_app/src/features/order/all_categories_button.dart';
import 'package:jp_app/src/features/order/categories_buttons.dart';
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
            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 75),
                SizedBox(
                  width: 300,
                  child: Text(
                    "Choose Your Favorite Snack",
                    softWrap: true,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 20),

                SizedBox(
                  height: 55,
                  width: 400,
                  child: Row(
                    spacing: 5,
                    children: [AllCategoriesButton(), CategoriesButtons()],
                  ),
                ),
                SizedBox(height: 40),
                JPAppSlantedBoxBuilder(),
                SizedBox(height: 60),
                Text(
                  "We Recommend",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 10),
                RecommendedContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
