import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import './mainScreen.dart';
import './constants/colors.dart';

class BrokeLife extends StatefulWidget {
  @override
  _BrokeLifeState createState() => _BrokeLifeState();
}

class _BrokeLifeState extends State<BrokeLife> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: blWhite,
      image: Image.asset('assets/saveMoney.gif'),
      loaderColor: blOrange,
      photoSize: 120,
      navigateAfterSeconds: MainScreen(),
      loadingText: Text(
        'BrokeLife',
        style: TextStyle(
          color: blOrange,
          fontSize: 36,
        ),
      )
    );
  }
}




























void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BrokeLife(),
    )
  );
}
