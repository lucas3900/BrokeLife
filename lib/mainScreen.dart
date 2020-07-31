import 'package:flutter/material.dart';

import './constants/colors.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blWhite,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Welcome To BrokeLife'),
      ),
      
    );
  }
}