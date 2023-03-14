import 'dart:async';

import 'package:flutter/material.dart';
import 'package:alternate_nose_breathing/constants.dart';

class BuiltTime extends StatefulWidget {
  const BuiltTime({Key? key}) : super(key: key);

  @override
  State<BuiltTime> createState() => _BuiltTimeState();
}

class _BuiltTimeState extends State<BuiltTime> {
  static const maxSeconds = 4;
  int seconds = maxSeconds;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() => seconds--);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isRunning = timer == null ? false : timer!.isActive;

    return Stack(
      children: <Widget>[
        TextButton(
          onPressed: () {
            print('+++COUNTDOWN TIMER STARTED SECONDS GOING DOWN ');
            startTimer();
          },
          child: Text(
            '$seconds',
            style: const TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 45,
                color: kConstantColourWhite),
          ),
        ),
      ],
    );
  }
}
