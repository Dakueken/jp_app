import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/src/features/shared/j_p_app_background_picture.dart';
import 'package:jp_app/src/features/shared/j_p_pink_button.dart';

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
          JPAppBackgroundPicture(
            backgroundpicture: "lib/assets/hintergründe/bg_startscreen.png",
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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Feeling Snackish Today?",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Explore Angi's most popular snack selection and get instantly happy",
                            style: Theme.of(context).textTheme.displayMedium,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 30),
                          JPPinkButton(
                            label: "Order Now",
                            height: 60,
                            width: 250,
                          ),
                        ],
                      ),
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
