import 'dart:async';

import 'package:fintech_v1/common/widgets/TextBoxTransition.dart';
import 'package:fintech_v1/constants/MyImage.dart';
import 'package:fintech_v1/features/home/screens/home.dart';
import 'package:flutter/material.dart';

class AnimateSplash extends StatefulWidget {
  const AnimateSplash({super.key});

  @override
  State<AnimateSplash> createState() => _AnimateSplashState();
}

class _AnimateSplashState extends State<AnimateSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, Home.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(colors: [
          Color(0xFF80353A),
          Color(0xFF5C181D),
        ], radius: 0.9),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              Image.asset(MyImage.logo),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "FINTECH CO.TH.",
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              const CircularProgressIndicator(
                strokeWidth: 4,
                color: Colors.white70,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
