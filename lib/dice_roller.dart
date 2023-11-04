import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';

final randomiser = Random();
var currentDiceNumber = 1;

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceNumber.png",
          width: 300,
        ),
        const SizedBox(
          height: 40,
          width: 40,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            padding: const EdgeInsets.all(10),
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: rolldice,
          child: const StyledText("Roll Dice"),
        )
      ],
    );
  }

  void rolldice() {
    setState(() {
      currentDiceNumber = randomiser.nextInt(6) + 1;
    });
  }
}
