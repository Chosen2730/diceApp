import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

var diceCount = 1;
final randomizer = Random();

class _DiceRoller extends State<DiceRoller> {
  void rollDice() {
    setState(() {
      diceCount = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$diceCount.png',
          width: 200,
        ),
        TextButton(
          style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 75, 74, 7))),
          onPressed: rollDice,
          child: const Text(
            "Roll Dice",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ],
    );
  }
}
