import 'package:flutter/material.dart';
import 'package:jp_app/src/features/order/j_p_app_slanted_box.dart';

class JPAppSlantedBoxBuilder extends StatefulWidget {
  const JPAppSlantedBoxBuilder({super.key});

  @override
  State<JPAppSlantedBoxBuilder> createState() => _JPAppSlantedBoxBuilderState();
}

class _JPAppSlantedBoxBuilderState extends State<JPAppSlantedBoxBuilder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 600,
      child: Stack(
        children: [
          Positioned(top: 150, child: JPAppSlantedBox()),
          Positioned(
            top: 170,
            left: 15,
            child: Text(
              "Angi's Yummy Burger",
              style: TextStyle(
                fontFamily: "SanFrancisco",
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 205,
            left: 15,
            child: SizedBox(
              width: 160,
              child: Text(
                "Delish vegan burger that tastes like heaven",
                style: TextStyle(
                  fontFamily: "SanFrancisco",
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 20,
            child: Text(
              "₳ 13.99",
              style: TextStyle(
                fontFamily: "SanFrancisco",
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 140,
            child: SizedBox(
              height: 260,
              width: 260,
              child: Image.asset(
                "lib/assets/grafiken/Burger_3D.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 330,
            left: 20,
            child: Container(
              height: 45,
              width: 120,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFBB8DE1),
                    offset: Offset(0, 5),
                    spreadRadius: 3,
                    blurRadius: 20,
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  colors: [Color(0xFF908CF5), Color(0xFFBB8DE1)],
                ),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: Text(
                  "Add to order",
                  softWrap: false,
                  style: TextStyle(
                    fontFamily: "SanFrancisco",
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
