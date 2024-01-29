import 'dart:math';

import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  const CustomText({Key? key}) : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  var currentNumber = 3;

  void rollDice() {
    setState(() {
      currentNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'images/dice-$currentNumber.png',
          width: 180,
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton(
            onPressed: rollDice,
            child: const Text(
              'Roll Dice',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ))
      ],
    );
  }
}
