import 'package:flutter/material.dart';

import 'package:tes/text_style.dart';

var startAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: const [
          Color.fromARGB(255, 19, 96, 158),
          Color.fromARGB(255, 74, 231, 135),
        ],  
        begin: startAlignment , 
        end: endAlignment
        ),
      ),
      child: const Center(
        child: StyledText(
        ),
      ),
    );
  }
}
