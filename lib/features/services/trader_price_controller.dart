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
    // socket.emit("test", "hello world");
    socket.on("traderprice", (data) {
      print("change price!!!");

      traderPrice = TraderPrice.fromJson(data);
      // print(data['bid'].toString());
      update();
    });
  }

  void disconnect() {
    socket.disconnect();
  }
}
