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
        const SizedBox(
          height: 100,
        ),
        Center(
          child: SingleChildScrollView(
              child: Container(
            padding: const EdgeInsets.only(top: 40),
            width: MediaQuery.of(context).size.width - 8,
            height: MediaQuery.of(context).size.height - 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const RadialGradient(colors: [
                Color.fromARGB(255, 246, 244, 222),
                Color.fromARGB(255, 255, 235, 155),
              ], radius: 0.9),
            ),
            child: widget,
          )),
        ),
      ],
    );
  }
}
