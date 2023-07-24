import 'package:dice_roller_flutter/ui/screens/DiceRollerAppScaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceRollerApp());
}

class DiceRollerApp extends StatelessWidget {
  const DiceRollerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice Roller",
      home: DiceRollerAppScaffold(),
    );
  }
}
