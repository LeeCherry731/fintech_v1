import 'package:fintech_v1/constants/CustomImage.dart';
import 'package:fintech_v1/home.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Home.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Home(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(CustomImage.logo), scale: 0.7),
            gradient: RadialGradient(colors: [
              Color(0xFF80353A),
              Color(0xFF5C181D),
            ], radius: 0.9),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text("Custom Font", style: TextStyle(fontFamily: "Montserrat")),
              ],
            ),
          ),
        ),
      );
  }
}
