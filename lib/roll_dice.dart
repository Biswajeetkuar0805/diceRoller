import 'dart:math';

import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});
  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var currentImage = 1 ;

  void changedice() {
    setState(
      () {
        currentImage = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentImage.png', width: 300),
        OutlinedButton(
            onPressed: changedice,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
            ),
            child: const Text(
              'roll dice',
              style: TextStyle(fontSize: 28),
            ))
      ],
    );
  }
}
