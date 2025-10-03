import 'dart:ui';

import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "lib/assets/hintergründe/bg_startscreen.png",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 800,
              width: 500,
              child: ClipRRect(
                child: Image.asset(
                  scale: 0.85,
                  "lib/assets/grafiken/chick cupcakes_3D.png",
                  fit: BoxFit.none,
                  alignment: Alignment(-0.65, -0.5),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.6),
            child: SizedBox(
              height: 300,
              width: 500,
              child: Image.asset(
                "lib/assets/details/T2.png",
                fit: BoxFit.fitWidth,
                opacity: const AlwaysStoppedAnimation(0.4),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.7),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 200,
                    width: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.grey.withValues(alpha: 0.1),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Feeling Snackish Today?",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Explore Angi's most popular snack selection and get instantly happy",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFF69EA3),
                                spreadRadius: 3,
                                blurRadius: 20,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                              colors: [Color(0xFFF69EA3), Color(0xFFE970C4)],
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            child: Text("Order Now"),
                          ),
                        ),
                      ],
                    ),
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


// [Color(0xFFF69EA3), Color(0xFFE970C4)]