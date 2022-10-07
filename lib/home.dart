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
                    height: 22,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.access_time_outlined, size: 28),
                  ),
                ],
              ),
              Column(
                children: const [
                  SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.notifications, size: 28),
                  ),
                ],
              ),
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
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: SingleChildScrollView(
                    child: Container(
                  padding: const EdgeInsets.only(top: 40),
                  width: MediaQuery.of(context).size.width - 8,
                  height: MediaQuery.of(context).size.height - 170,
                  decoration: const BoxDecoration(
                    gradient: RadialGradient(colors: [
                      Color.fromARGB(255, 243, 237, 181),
                      Color.fromARGB(255, 246, 208, 59),
                    ], radius: 0.9),
                  ),
                  child: null,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
