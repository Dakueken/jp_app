import 'package:flutter/material.dart';
import 'package:jp_app/src/features/shared/recommended_items.dart';
import 'package:jp_app/src/features/single_view/single_view.dart';

class RecommendedContainer extends StatefulWidget {
  const RecommendedContainer({super.key});

  @override
  State<RecommendedContainer> createState() => _RecommendedContainerState();
}

class _RecommendedContainerState extends State<RecommendedContainer> {
  @override
  Widget build(BuildContext context) {
    List<RecommendedItem> items = recommendeditems;
    return SizedBox(
      height: 280,
      child: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) {
          return SizedBox(width: 40);
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  Color(0x20FFFFFF),
                  Color(0xAF908CF5),
                  Color(0xAF8C5BEA),
                ],
              ),
              border: Border.all(color: Colors.grey),
            ),
            width: 200,
            height: 280,
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return SingleView(items: items, index: index);
                  },
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      items[index].picture,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    items[index].name,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(height: 10),
                  Text(
                    items[index].shortDescription,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₳ 8.99",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        "♡ 200",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
