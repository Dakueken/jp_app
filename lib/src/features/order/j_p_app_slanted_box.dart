import 'dart:ui';

import 'package:flutter/material.dart';

class JPAppSlantedBox extends StatelessWidget {
  const JPAppSlantedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: SlantedRoundedRectangleClipper(),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: 380,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 0.1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SlantedRoundedRectangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double radius = 40.0;

    final path = Path();
    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0); // Top-left curve
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius); // Top-right
    path.lineTo(
      size.width,
      size.height - radius - 40,
    ); // move down, less than full height
    path.quadraticBezierTo(
      size.width,
      size.height - 40,
      size.width - radius,
      size.height - 40,
    ); // Bottom-right
    path.lineTo(radius, size.height); // slant upward slightly
    path.quadraticBezierTo(
      0,
      size.height,
      0,
      size.height - radius,
    ); // Bottom-left
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false; //Container is Static
}
