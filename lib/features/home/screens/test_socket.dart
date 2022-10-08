import 'dart:async';

import 'package:fintech_v1/features/models/trader_price.dart';
import 'package:fintech_v1/features/services/trader_price_controller.dart';
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
  void initState() {
    // TODO: implement initState
    super.initState();
    traderPriceController.connect();
    Timer(
      Duration(seconds: 3),
      () => null,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    traderPriceController.disconnect();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: TraderPriceController(),
        builder: (Controller) {
          return ListView(
            children: [
              ListTile(
                title: const Text("bid"),
                subtitle: Text(Controller.traderPrice.bid.toString()),
                onTap: () {
                  // traderPriceController.reset1();
                  return null;
                },
              ),
              ListTile(
                title: const Text("ask"),
                subtitle: Text(Controller.traderPrice.ask.toString()),
                onTap: () {
                  // traderPriceController.reset2();
                  return null;
                },
              ),
              ListTile(
                title: const Text("ask99Bg1"),
                subtitle: Text(Controller.traderPrice.ask99Bg1.toString()),
                onTap: () {
                  // traderPriceController.reset3();
                  return null;
                },
              ),
              ListTile(
                title: const Text("bid99Bg1"),
                subtitle: Text(Controller.traderPrice.bid99Bg1.toString()),
                onTap: () {
                  // traderPriceController.reset3();
                  return null;
                },
              ),
              ListTile(
                title: const Text("ask96Bg1"),
                subtitle: Text(Controller.traderPrice.ask96Bg1.toString()),
                onTap: () {
                  // traderPriceController.reset3();
                  return null;
                },
              ),
              ListTile(
                title: const Text("bid96Bg1"),
                subtitle: Text(Controller.traderPrice.bid96Bg1.toString()),
                onTap: () {
                  // traderPriceController.reset3();
                  return null;
                },
              ),
              ListTile(
                title: const Text("thb"),
                subtitle: Text(Controller.traderPrice.thb.toString()),
                onTap: () {
                  // traderPriceController.reset3();
                  return null;
                },
              ),
              ListTile(
                title: const Text("askAss"),
                subtitle: Text(Controller.traderPrice.askAss.toString()),
                onTap: () {
                  // traderPriceController.reset3();
                  return null;
                },
              ),
              ListTile(
                title: const Text("bidAss"),
                subtitle: Text(Controller.traderPrice.bidAss.toString()),
                onTap: () {
                  // traderPriceController.reset3();
                  return null;
                },
              ),
              ListTile(
                title: const Text("status"),
                subtitle: Text(Controller.traderPrice.status.toString()),
                onTap: () {
                  // traderPriceController.reset3();
                  return null;
                },
              ),
              ListTile(
                title: const Text("spotno"),
                subtitle: Text(Controller.traderPrice.spotno.toString()),
                onTap: () {
                  // traderPriceController.reset3();
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              )
            ],
          );
        });
  }
}
