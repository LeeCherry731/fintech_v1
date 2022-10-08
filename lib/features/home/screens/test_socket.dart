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
    return ListView(
      children: [
        ListTile(
          title: const Text("Bid"),
          subtitle: Text(traderPriceController.traderPrice.bid.toString()),
        ),
        ListTile(
          title: const Text("Ask"),
          subtitle: Text(traderPriceController.traderPrice.ask.toString()),
        ),
        ListTile(
          title: const Text("THB"),
          subtitle: Text(traderPriceController.traderPrice.thb.toString()),
        ),
      ],
    );
  }
}
