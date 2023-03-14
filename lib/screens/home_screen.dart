// ignore_for_file: avoid_print

import 'package:alternate_nose_breathing/screens/countdown_screeen.dart';
import 'package:flutter/material.dart';
import 'package:alternate_nose_breathing/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kConstantColourNavy,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 250),
            Center(
              child: Hero(
                tag: 'satori',
                child: Image.asset(
                  'assets/images/satori2 png.png',
                  width: 120,
                  height: 120,
                ),
              ),
            ),

            //ANB TEXT
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(
                100,
              ),
              child: Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: kConstantColourPurple),
                  onPressed: () {
                    print(
                        '+++HOME_ SCREEN TEXT BUTTON ON PRESSED TRIGGERED, AND PUSHED TO COUNTDOWN_SCREEN');

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlternateNoseBreathingWidget(),
                      ),
                    );
                  },
                  child: const Center(
                    child: Text(
                      'Start your session',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: kConstantColourWhite,
                      ),
                    ),
                  ),
                ),
              ),
            ), //TEXT BUTTON
          ],
        ),
      ),
    );
  }
}
