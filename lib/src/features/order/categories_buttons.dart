import 'dart:ui';
import 'package:flutter/material.dart';

class CategoriesButtons extends StatefulWidget {
  const CategoriesButtons({super.key});

  @override
  State<CategoriesButtons> createState() => _CategoriesButtonsState();
}

class _CategoriesButtonsState extends State<CategoriesButtons> {
  Set<int> selectedIndices = {};
  late int withalpha;
  late TextStyle? style;
  List<String> categories = ["Sweet", "Sour", "Salty", "Delicious"];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 5);
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          bool isSelected = selectedIndices.contains(index);
          withalpha = isSelected ? 180 : 20;
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
                      isSelected
                          ? selectedIndices.remove(index)
                          : selectedIndices.add(index);
                    });
                  },
                  child: Text(categories[index], style: style),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
