import 'package:flutter/material.dart';

import 'package:tes/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 73, 23, 23),
            Color.fromARGB(255, 37, 18, 58)
          ],
        ),
      ),
    ),
  );
}
