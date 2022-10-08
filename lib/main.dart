import 'package:fintech_v1/constants/CustomFontMontserrat.dart';

import 'package:fintech_v1/features/splash/screens/animate_splash.dart';

import 'package:fintech_v1/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: CustomFontMontserrat.fontFamily,
      ),
      home: const AnimateSplash(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
}
