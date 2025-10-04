import 'dart:ui';
import 'package:flutter/material.dart';

class CategoriesButton extends StatefulWidget {
  const CategoriesButton({super.key});

  @override
  State<CategoriesButton> createState() => _CategoriesButtonState();
}

class _CategoriesButtonState extends State<CategoriesButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(
              20,
            ), //20 nicht ausgewäht, 180 ausgewählt
            borderRadius: BorderRadius.circular(30),
            border: BoxBorder.all(color: Colors.white60),
          ),
          height: 50,
          width: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            onPressed: () {},
            child: Text("data", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
