
import 'package:doggo/shared/appConstents.dart';
import 'package:doggo/shared/appFonts.dart';
import 'package:doggo/ui/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff73b1e0),
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Stack(
          children: [
            Text(
              splashScreenText,
              style: appstylebold(50, Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset(splashScreenImage),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Center(
                  child: SliderButton(
                      buttonSize: 65,
                      buttonColor: const Color(0xff73b1e0),
                      backgroundColor: Colors.white,
                      action: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                      label: Text(splashScreenButtonText,
                          style: appstylebold(19, Colors.black)),
                      icon: const Icon(Icons.pets))),
            )
          ],
        ),
      ),
    );
  }
}
