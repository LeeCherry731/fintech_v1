import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class TestSocket extends StatefulWidget {
  const TestSocket({super.key});

  @override
  State<TestSocket> createState() => _TestSocketState();
}

class _TestSocketState extends State<TestSocket> {
  late IO.Socket socket;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    connect();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    socket.disconnect();
  }

  void connect() {
    socket = IO.io("http://203.154.83.135:25551", <String, dynamic>{
      "transports": ["websocket"],
      "autoConnect": false,
    });
    socket.connect();
    socket.onConnect((data) => print("Socket connected"));
    print(socket.connected);
    // socket.emit("test", "hello world");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
