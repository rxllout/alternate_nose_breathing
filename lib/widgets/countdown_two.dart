import 'dart:async';
import 'package:flutter/material.dart';

class BreathingButton extends StatefulWidget {
  @override
  _BreathingButtonState createState() => _BreathingButtonState();
}

class _BreathingButtonState extends State<BreathingButton> {
  int _count = 0;
  bool _countingUp = true;
  late Timer _timer;

  void _startTimer() {
    const intervalDuration = const Duration(seconds: 4);

    _timer = Timer.periodic(intervalDuration, (timer) {
      setState(() {
        if (_countingUp) {
          if (_count == 4) {
            _countingUp = false;
            _timer.cancel();
            _startTimer();
          } else {
            _count++;
          }
        } else {
          if (_count == 0) {
            _countingUp = true;
            _timer.cancel();
            _startTimer();
          } else {
            _count--;
          }
        }
      });
    });
  }

  void _stopTimer() {
    if (_timer != null) {
      _timer.cancel();
    }
  }

  @override
  void dispose() {
    _stopTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String label;

    switch (_count) {
      case 1:
        label = 'Inhale';
        break;
      case 2:
        label = 'Hold';
        break;
      case 3:
        label = 'Exhale';
        break;
      default:
        label = '';
        break;
    }

    return TextButton(
      child: Column(
        children: [
          Text(_count.toString()),
          Text(label),
        ],
      ),
      onPressed: () {
        _stopTimer();
        _count = 0;
        _countingUp = true;
        _startTimer();
      },
    );
  }
}
