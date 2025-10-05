import 'package:flutter/material.dart';
import 'package:jp_app/src/features/order/orderpage.dart';

class JPPinkButton extends StatelessWidget {
  final String label;
  final double height, width;
  const JPPinkButton({
    super.key,
    required this.label,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Color(0xFFF69EA3), spreadRadius: 3, blurRadius: 20),
        ],
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [Color(0xFFF69EA3), Color(0xFFE970C4)],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Orderpage()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(label, style: Theme.of(context).textTheme.displayLarge),
      ),
    );
  }
}
