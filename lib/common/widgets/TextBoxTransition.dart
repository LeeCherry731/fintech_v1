import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextBoxTransition extends AnimatedWidget {
  const TextBoxTransition({width}) : super(listenable: width);

  Animation<double> get width => width;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: null,
      child: const Text("FINTECH CO.TH"),
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: width.value, color: Colors.amber),
      ),
    );
  }
}
