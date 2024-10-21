import 'package:flutter/material.dart';
import 'package:tes/dice_roller.dart';

// import 'package:tes/text_style.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  const GradientContainer.purple({super.key})
  : colors = const [
    Color(0xFF6c5ce7),
    Color(0xFF9e7aea),
    ];

  final List<Color> colors;
 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
          child: DiceRoller(),
      ),
    );
  }
}
