import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(const Color.fromARGB(255, 29, 109, 126),
              Color.fromARGB(255, 3, 49, 140))),
    ),
  );
}
