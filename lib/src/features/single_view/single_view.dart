import 'package:flutter/material.dart';
import 'package:jp_app/src/features/shared/j_p_pink_button.dart';
import 'package:jp_app/src/features/shared/recommended_items.dart';
import 'package:jp_app/src/features/single_view/single_view_box.dart';

class SingleView extends StatefulWidget {
  const SingleView({super.key, required this.items, required this.index});
  final int index;

  final List<RecommendedItem> items;

  @override
  State<SingleView> createState() => _SingleViewState();
}

enum SizeOption { small, medium, large }

class _SingleViewState extends State<SingleView> {
  double price = 8.99;
  int counter = 1;

  SizeOption selectedSize = SizeOption.small;
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      widthFactor: 1,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: [0.0, 0.05],
            begin: AlignmentDirectional.bottomCenter,
            end: AlignmentDirectional.topCenter,
            colors: [Color(0xFF437F97), Color(0xFF2F2B22)],
          ),
        ),
        child: Stack(
          children: [
            Transform.translate(
              offset: Offset(0, -150),
              child: SizedBox(
                child: Image.asset(
                  widget.items[widget.index].picture,
                  height: 450,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 170),
                  SingleViewBox(items: widget.items, index: widget.index),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SegmentedButton<SizeOption>(
                        style: SegmentedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(255, 41, 39, 39),
                          selectedBackgroundColor: Color.fromARGB(
                            255,
                            97,
                            96,
                            96,
                          ),
                          selectedForegroundColor: Colors.white,
                        ),
                        showSelectedIcon: false,
                        selected: <SizeOption>{selectedSize},
                        onSelectionChanged: (Set<SizeOption> newSelection) {
                          setState(() {
                            selectedSize = newSelection.first;
                          });
                        },
                        segments: const <ButtonSegment<SizeOption>>[
                          ButtonSegment<SizeOption>(
                            value: SizeOption.small,
                            label: Text(
                              "Small",
                              style: TextStyle(fontFamily: "SanFrancisco"),
                            ),
                          ),
                          ButtonSegment<SizeOption>(
                            value: SizeOption.medium,
                            label: Text(
                              "Medium",
                              style: TextStyle(fontFamily: "SanFrancisco"),
                            ),
                          ),
                          ButtonSegment<SizeOption>(
                            value: SizeOption.large,
                            label: Text(
                              "Large",
                              style: TextStyle(fontFamily: "SanFrancisco"),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: const Color.fromARGB(
                                115,
                                57,
                                54,
                                54,
                              ),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                counter--;
                              });
                            },
                            child: Text("-"),
                          ),
                          Text(
                            "$counter",
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              shape: CircleBorder(),

                              backgroundColor: const Color.fromARGB(
                                115,
                                57,
                                54,
                                54,
                              ),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                            child: Text("+"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  JPPinkButton(
                    label: "Add To order for ₳ ${price * counter} ",
                    height: 50,
                    width: 370,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
