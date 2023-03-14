import 'package:flutter/material.dart';
import 'package:alternate_nose_breathing/constants.dart';
import '/widgets/card_button.dart';

class HomeScreenPizza extends StatelessWidget {
  const HomeScreenPizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kConstantColourNavy,
      body: Row(
        children: <Widget>[
          const SizedBox(height: 200),
          ReusableCard(
            colour: kConstantColourPurple,
            cardChild: Text(''),
            onPress: () => Navigator.pop,
          ),
          ReusableCard(
            colour: kConstantColourPurple,
            cardChild: Text(''),
            onPress: () => Navigator.pop,
          ),
        ],
      ),
    );
  }
}
