import 'dart:async';
import 'package:alternate_nose_breathing/screens/text_screen.dart';
import 'package:flutter/material.dart';
import 'package:alternate_nose_breathing/constants.dart';
import '/screens/text_screen.dart';

class AlternateNoseBreathingWidget extends StatefulWidget {
  @override
  _AlternateNoseBreathingWidgetState createState() =>
      _AlternateNoseBreathingWidgetState();
}

class _AlternateNoseBreathingWidgetState
    extends State<AlternateNoseBreathingWidget> {
  int _textIndex = 0;
  final List<String> _textList = [
    'Starting in 3.. 2.. 1',
    'Relax your mind and sit comfortably.',
    'Place your left hand on your left knee with the palm up.',
    'Bring your right hand up to your nose.',
    'Close your right nostril with your right thumb.',
    'Inhale slowly through your left nostril Pause briefly.',
    'Close your left nostril with your right ring finger.',
    'Release your thumb and exhale slowly through your right nostril.',
    'Inhale through your right nostril. Pause briefly.',
    'Close your right nostril with your right thumb.',
    'Release your ring finger and exhale slowly through your left nostril.',
    'This completes one round of alternate nostril breathing.'
  ];

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        _textIndex = (_textIndex + 1) % _textList.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kConstantColourWhite,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage('assets/images/purple.jpg'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Hero(
                tag: 'satori',
                child: Image(
                  width: 140,
                  height: 140,
                  image: AssetImage('assets/images/navy.png'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Text(
                  _textList[_textIndex],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontFamily: 'Ubuntu',
                    color: kConstantColourWhite,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  print(
                      'PIZZA BUTTON ON PRESSED TRIGGERED AND PUSHED TO TEXT SCREEN');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreenPizza(),
                    ),
                  );
                },
                child: const Text('Pizza Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
