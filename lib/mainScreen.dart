import 'package:BrokeLife/Buttons/cheapMealButton.dart';
import 'package:flutter/material.dart';

import 'package:BrokeLife/constants/colors.dart';
import 'package:BrokeLife/Buttons/navButton.dart';
import 'package:BrokeLife/Buttons/searchButton.dart';
import 'package:BrokeLife/Buttons/infoButton.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blWhite,
      appBar: AppBar(
        leading: NavButton(),
        backgroundColor: blWhite,
        title: Text('BrokeLife',
          style: TextStyle(
            color: blOrange,
          )
        ),
        actions: <Widget>[
          SearchButton(),
          InfoButton(),
        ],
      ),
      body: Center(
        child: Container(
          color: blGrey,
          child: Column(
            children: <Widget>[
              CheapestMealButton(),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              )
            ],
          ),
        ),
      ),
    );
  }
}