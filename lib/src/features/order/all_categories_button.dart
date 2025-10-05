import 'dart:ui';
import 'package:flutter/material.dart';

class AllCategoriesButton extends StatefulWidget {
  const AllCategoriesButton({super.key});

  @override
  State<AllCategoriesButton> createState() => _AllCategoriesButtonState();
}

class _AllCategoriesButtonState extends State<AllCategoriesButton> {
  bool isSelected = false;
  late int withalpha;
  late Color color;
  late TextStyle? style;
  @override
  Widget build(BuildContext context) {
    withalpha = isSelected ? 180 : 20;
    color = isSelected ? Colors.black : Colors.white;
    style = isSelected
        ? Theme.of(context).textTheme.bodyMedium
        : Theme.of(context).textTheme.bodySmall;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(withalpha),
            borderRadius: BorderRadius.circular(30),
            border: BoxBorder.all(color: Colors.white60),
          ),
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.fastfood_outlined, color: color),
                Text("All categories", style: style),
                Icon(Icons.arrow_drop_down, color: color),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
