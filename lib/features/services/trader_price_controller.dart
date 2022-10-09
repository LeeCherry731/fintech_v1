import 'dart:convert';

import 'package:fintech_v1/features/models/trader_price.dart';
import 'package:get/get.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class TraderPriceController extends GetxController {
  late IO.Socket socket;
  late TraderPrice traderPrice = TraderPrice(
      bid: 0,
      ask: 0,
      ask99Bg1: 0,
      bid99Bg1: 0,
      ask96Bg1: 0,
      bid96Bg1: 0,
      thb: 0,
      askAss: 0,
      bidAss: 0,
      status: 'pending',
      spotno: 0);

  void connect() {
    socket = IO.io("http://203.154.83.135:25551", <String, dynamic>{
      "transports": ["websocket"],
      "autoConnect": false,
    });
    socket.connect();
    socket.onConnect((data) => print("Socket connected"));
    print(socket.connected);

    onTraderprice();
  }

  void onTraderprice() {
    socket.on("traderprice", (data) {
      traderPrice = TraderPrice.fromJson(data);
      update();
    });
  }

  void reset1() {
    print("reset1");
    traderPrice.bid = 0;
    print(traderPrice.bid);
  }

  void reset2() {
    print("reset2");
    traderPrice = TraderPrice(
        bid: 2,
        ask: 2,
        ask99Bg1: 2,
        bid99Bg1: 2,
        ask96Bg1: 2,
        bid96Bg1: 2,
        thb: 2,
        askAss: 2,
        bidAss: 2,
        status: 'pending',
        spotno: 2);
  }

  void reset3() {
    print("reset3");
    traderPrice = TraderPrice(
        bid: 3,
        ask: 3,
        ask99Bg1: 3,
        bid99Bg1: 3,
        ask96Bg1: 3,
        bid96Bg1: 3,
        thb: 3,
        askAss: 3,
        bidAss: 3,
        status: 'pending',
        spotno: 3);
  }

  void disconnect() {
    print("socket disconnected!!");
    socket.disconnect();
  }
}
