import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/src/features/shared/j_p_pink_button.dart';
import 'package:jp_app/src/features/shared/recommended_items.dart';

class SingleViewBox extends StatelessWidget {
  const SingleViewBox({super.key, required this.items, required this.index});

  final List<RecommendedItem> items;
  final int index;

  @override
  Widget build(BuildContext context) {
    double price = 0;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: 350,
          width: 800,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Colors.grey.withValues(alpha: 0.1),
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: Text(
                    "♡ 200",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                Text(
                  items[index].name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 20),
                Text(
                  items[index].longDescription,
                  style: Theme.of(context).textTheme.displaySmall,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Text("₳ 8.99", style: Theme.of(context).textTheme.displayLarge),
                SizedBox(height: 20),
                Divider(color: Colors.white.withAlpha(150), thickness: 0.5),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 15,
                      children: [
                        Text(
                          "Indredients",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              height: 25,
                              fit: BoxFit.contain,
                              "lib/assets/grafiken/ingredients.png",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 15,
                      children: [
                        Text(
                          "Reviews",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.white),
                            Icon(Icons.star, color: Colors.white),
                            Icon(Icons.star, color: Colors.white),
                            Icon(Icons.star, color: Colors.white),
                            Icon(Icons.star_border, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
