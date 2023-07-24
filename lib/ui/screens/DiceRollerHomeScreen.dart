import 'dart:math';

import 'package:dice_roller_flutter/ui/themes.dart';
import 'package:flutter/material.dart';

final Random randomizer = Random();

class DiceRollerHomeScreen extends StatefulWidget {
  const DiceRollerHomeScreen({super.key});

  @override
  State<DiceRollerHomeScreen> createState() {
    return _DiceRollerHomeScreenState();
  }
}

class _DiceRollerHomeScreenState extends State<DiceRollerHomeScreen> {
  int _currentDiceIndex = 1;

  void onDiceRoll() {
    int randomValue =
        randomizer.nextInt(6); // this will give value between 0..5
    randomValue +=
        1; //as our dice images having naming convention from 1..6, e.g dice-1.png, dice-2.png etc.
    setState(() {
      _currentDiceIndex = randomValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: homeScreenBackgroundGradient,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/dice-$_currentDiceIndex.png",
              width: 200,
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: onDiceRoll,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(6),
                  backgroundColor: Colors.orange,
                  elevation: 8,
                  shadowColor: Colors.black,
                  textStyle:
                      const TextStyle(color: Colors.white, fontSize: 28)),
              child: const Text("Roll Dice"),
            )
          ],
        ),
      ),
    );
  }
}
