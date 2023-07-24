import 'package:dice_roller_flutter/ui/screens/DiceRollerHomeScreen.dart';
import 'package:flutter/material.dart';


class DiceRollerAppScaffold extends StatelessWidget {
  const DiceRollerAppScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DiceRollerHomeScreen(),
    );
  }
}