import 'dart:ffi';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:coffee/newpages/list.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: SizedBox(
              width: 400,
              height: 400,
              child: LottieBuilder.asset("images/anime.json"),
            ),
          )
        ],
      ),
      nextScreen: const Arya(),
      splashIconSize: double.infinity,
      backgroundColor: Colors.white,
    );
  }
}
