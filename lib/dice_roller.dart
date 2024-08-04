import 'package:flutter/material.dart';
import 'dart:math';


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage ='assets/images/dice-2.png';

  void rollDice(){
   var diceRoll =  Random().nextInt(6) +1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });

  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        SizedBox(
          height: 20,

        ),

        TextButton(onPressed:rollDice,
          style: TextButton.styleFrom(

              foregroundColor:Colors.white,
              textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ) ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
