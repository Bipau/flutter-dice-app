import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(contex) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-images/dice-$currentDiceRoll.png', width: 250),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20
              // ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
