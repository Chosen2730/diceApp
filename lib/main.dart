import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer([
        Color.fromARGB(255, 30, 6, 163),
        Color.fromARGB(115, 4, 12, 82)
      ])),
    ),
  );
}
