import 'package:flutter/material.dart';
import 'package:jp_app/src/features/shared/j_p_app_background_picture.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({super.key});

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          JPAppBackgroundPicture(
            backgroundpicture: "lib/assets/hintergründe/bg_mainscreen.png",
          ),

          Column(
            children: [
              Text("Choose Your Favorite Snack"),
              Row(
                children: [
                  // TODO ToggleButtons(children).   geöffneter Tab!!
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
