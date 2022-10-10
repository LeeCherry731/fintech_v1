import 'package:fintech_v1/features/home/services/trader_price_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TestSocket extends StatefulWidget {
  const TestSocket({super.key});

  @override
  State<TestSocket> createState() => _TestSocketState();
}

class _TestSocketState extends State<TestSocket> {
  final traderPriceController = Get.put(TraderPriceController());

  @override
  void dispose() {
    super.dispose();
    // traderPriceController.disconnect();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: TraderPriceController(),
        builder: (controller) {
          return Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      height: 100,
                    ),
                    Container(
                      height: 80,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(172, 255, 255, 255)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            minRadius: 28,
                            backgroundColor: Colors.amber,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Your Investment"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Current profit",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 156, 228)))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(92, 35, 35, 35),
                        blurRadius: 5,
                        offset: Offset(0, 5),
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Column(
                    children: [
                      Positioned(
                        child: Container(
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Gold price",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          height: 20,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 218, 155, 28),
                                Color.fromARGB(255, 239, 206, 85),
                                Color.fromARGB(255, 255, 241, 186),
                                Color.fromARGB(255, 239, 206, 85),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.0, 0.5, 0.8, 0.9],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 244, 231),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        child: ListTile(
                          title: const Text("bid"),
                          subtitle: Text(controller.traderPrice.bid.toString()),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 251, 164, 51),
                        Color.fromARGB(255, 180, 120, 23),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: const Text("ask"),
                    subtitle: Text(controller.traderPrice.ask.toString()),
                    onTap: () {
                      // traderPricecontroller.reset3();
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 167, 83, 27),
                        Color.fromARGB(255, 241, 185, 97),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: const Text("ask96Bg1"),
                    subtitle: Text(controller.traderPrice.ask96Bg1.toString()),
                    onTap: () {
                      // traderPricecontroller.reset3();
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 251, 245, 51),
                        Color.fromARGB(255, 255, 184, 70),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: const Text("spotno"),
                    subtitle: Text(controller.traderPrice.spotno.toString()),
                    onTap: () {
                      // traderPricecontroller.reset3();
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 251, 245, 51),
                        Color.fromARGB(255, 255, 184, 70),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: const Text("spotno"),
                    subtitle: Text(controller.traderPrice.spotno.toString()),
                    onTap: () {
                      // traderPricecontroller.reset3();
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 251, 245, 51),
                        Color.fromARGB(255, 255, 184, 70),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: const Text("spotno"),
                    subtitle: Text(controller.traderPrice.spotno.toString()),
                    onTap: () {
                      // traderPricecontroller.reset3();
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 251, 245, 51),
                        Color.fromARGB(255, 255, 184, 70),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: const Text("spotno"),
                    subtitle: Text(controller.traderPrice.spotno.toString()),
                    onTap: () {
                      // traderPricecontroller.reset3();
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 251, 245, 51),
                        Color.fromARGB(255, 255, 184, 70),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: const Text("spotno"),
                    subtitle: Text(controller.traderPrice.spotno.toString()),
                    onTap: () {
                      // traderPricecontroller.reset3();
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 251, 245, 51),
                        Color.fromARGB(255, 255, 184, 70),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: const Text("spotno"),
                    subtitle: Text(controller.traderPrice.spotno.toString()),
                    onTap: () {
                      // traderPricecontroller.reset3();
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 251, 245, 51),
                        Color.fromARGB(255, 255, 184, 70),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: const Text("spotno"),
                    subtitle: Text(controller.traderPrice.spotno.toString()),
                    onTap: () {
                      // traderPricecontroller.reset3();
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          );
        });
  }
}
