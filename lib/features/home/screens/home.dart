import 'package:fintech_v1/features/home/widgets/ListProfileInfo.dart';
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
        bottomNavigationBar: BottomNavBar(),
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
          child: ListProfileInfo(),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = [
    const Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 60),
      ),
    ),
    const Center(
      child: Text(
        "Buy/Sell",
        style: TextStyle(fontSize: 60),
      ),
    ),
    const Center(
      child: Text(
        "Portfollio",
        style: TextStyle(fontSize: 60),
      ),
    ),
    const Center(
      child: Text(
        "Account",
        style: TextStyle(fontSize: 60),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF2D090C),
            Color(0xFF76252B),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.8],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: -27,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFA38C57),
                      Color(0xFFE5D4A7),
                      Color(0xFFA38C57),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.8, 0.1],
                    tileMode: TileMode.clamp,
                  ),
                ),
                width: MediaQuery.of(context).size.width - 20,
                height: 30,
              )),
          SizedBox(
            height: 90,
            child: BottomNavigationBar(
              unselectedItemColor: Color.fromARGB(255, 245, 203, 131),
              unselectedLabelStyle: const TextStyle(
                  color: Color.fromARGB(255, 247, 181, 66), fontSize: 14),
              type: BottomNavigationBarType.fixed,
              iconSize: 45,
              selectedItemColor: const Color.fromARGB(255, 253, 253, 253),
              showSelectedLabels: true,
              selectedLabelStyle: const TextStyle(
                  color: Color.fromARGB(255, 247, 181, 66), fontSize: 20),
              backgroundColor: Colors.transparent,
              currentIndex: currentIndex,
              onTap: (index) => setState(
                () => currentIndex = index,
              ),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.price_change),
                  label: "Buy/Sell",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_alarm),
                  label: "Portfolio",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: "Account",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
