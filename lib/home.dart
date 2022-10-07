import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = "/home";
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            elevation: 2,
            backgroundColor: Colors.transparent,
            actions: [
              Column(
                children: const [
                  SizedBox(
                    height: 4,
                  ),
                  Text("TH"),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.menu, size: 30),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/logo.png"), scale: 0.7),
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
      ),
    );
  }
}
