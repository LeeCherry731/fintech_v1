import 'package:fintech_v1/features/home/screens/test_socket.dart';
import 'package:fintech_v1/features/home/widgets/list_profile_info.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String routeName = "/home";
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  List<Widget> screens = [
    const TestSocket(),
    const Center(
      child: Text(
        "2",
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        "3",
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        "4",
        style: TextStyle(fontSize: 50),
      ),
    ),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavBar(onTap: onTap, currentIndex: currentIndex),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/logo.png"), scale: 0.7),
          gradient: RadialGradient(colors: [
            Color(0xFF80353A),
            Color(0xFF5C181D),
          ], radius: 0.9),
        ),
        child: ListProfileInfo(widget: screens[currentIndex]),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final Function onTap;
  final int currentIndex;
  const BottomNavBar({
    Key? key,
    required this.onTap,
    required this.currentIndex,
  }) : super(key: key);

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
              top: -30,
              width: MediaQuery.of(context).size.width - 10,
              height: 32,
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
                    // stops: [0.1, 0.8, 0.1],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: const Center(
                    child: Text(
                  "LHC",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 158, 126, 77)),
                )),
              )),
          SizedBox(
            height: 80,
            child: BottomNavigationBar(
              unselectedItemColor: const Color.fromARGB(255, 245, 203, 131),
              unselectedLabelStyle: const TextStyle(
                  color: Color.fromARGB(255, 247, 181, 66),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              type: BottomNavigationBarType.fixed,
              iconSize: 30,
              selectedItemColor: const Color.fromARGB(255, 253, 253, 253),
              showSelectedLabels: true,
              selectedLabelStyle: const TextStyle(
                color: Color.fromARGB(255, 247, 181, 66),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              backgroundColor: Colors.transparent,
              currentIndex: currentIndex,
              onTap: (index) {
                onTap(index);
              },
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
