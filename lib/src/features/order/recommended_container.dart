import 'package:flutter/material.dart';

class RecommendedContainer extends StatefulWidget {
  const RecommendedContainer({super.key});

  @override
  State<RecommendedContainer> createState() => _RecommendedContainerState();
}

class _RecommendedContainerState extends State<RecommendedContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        gradient: LinearGradient(
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
          colors: [Color(0x20FFFFFF), Color(0xAF908CF5), Color(0xAF8C5BEA)],
        ),
        border: BoxBorder.all(color: Colors.grey),
      ),
      width: 180,
      height: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "lib/assets/grafiken/cat cupcakes_3D.png",
            scale: 3.1,
            fit: BoxFit.none,
          ),
          Text(
            "Mogli's Cup",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "SanFrancisco",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Strawberry ice cream",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "SanFrancisco",
              fontSize: 14,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₳ 8.99",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "SanFrancisco",
                  fontSize: 16,
                ),
              ),
              Text(
                "♡ 200",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "SanFrancisco",
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
