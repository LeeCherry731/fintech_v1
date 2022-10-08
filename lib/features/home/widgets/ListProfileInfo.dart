import 'package:flutter/material.dart';

class ListProfileInfo extends StatelessWidget {
  final Widget widget;
  const ListProfileInfo({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20, left: 10),
          height: MediaQuery.of(context).size.height / 7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1567103472667-6898f3a79cf2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Text(
                          "Mr.Goldplus",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(250, 255, 218, 36),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.notifications,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.history,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "TH",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          child: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.menu,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.only(top: 40),
            width: MediaQuery.of(context).size.width - 8,
            height: MediaQuery.of(context).size.height - 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const RadialGradient(colors: [
                Color.fromARGB(255, 246, 244, 222),
                Color.fromARGB(255, 255, 235, 155),
              ], radius: 0.9),
            ),
            child: widget,
          ),
        ),
      ],
    );
  }
}
