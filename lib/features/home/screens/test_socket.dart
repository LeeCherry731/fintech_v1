import 'dart:async';

import 'package:fintech_v1/features/models/trader_price.dart';
import 'package:fintech_v1/features/home/services/trader_price_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
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
    traderPriceController.disconnect();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: TraderPriceController(),
        builder: (controller) {
          return GridView(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisExtent: 100,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              Column(
                children: [
                  Positioned(
                    child: Container(
                      height: 20,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 222, 188),
                            Color.fromARGB(255, 206, 118, 78),
                            Color.fromARGB(255, 135, 91, 21),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 0.1, 0.8],
                        ),
                      ),
                      child: ListTile(
                        title: const Text("spotno"),
                        subtitle:
                            Text(controller.traderPrice.spotno.toString()),
                        onTap: () {
                          // traderPriceController.reset3();
                          return null;
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
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
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: ListTile(
                      title: const Text("spotno"),
                      subtitle: Text(controller.traderPrice.spotno.toString()),
                      onTap: () {
                        // traderPriceController.reset3();
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 248, 198, 46),
                      Color.fromARGB(255, 255, 138, 70),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 0.8],
                    tileMode: TileMode.clamp,
                  ),
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20)),
                ),
                child: ListTile(
                  title: const Text("bid"),
                  subtitle: Text(controller.traderPrice.bid.toString()),
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
          );
        });
  }
}
