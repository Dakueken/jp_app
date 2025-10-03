import 'package:flutter/material.dart';

class JPAppBackgroundPicture extends StatelessWidget {
  final String backgroundpicture;
  const JPAppBackgroundPicture({super.key, required this.backgroundpicture});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(backgroundpicture, fit: BoxFit.cover),
    );
  }
}
