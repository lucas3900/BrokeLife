import 'package:flutter/material.dart';

import './constants/colors.dart';

class SearchFromMain extends StatefulWidget {
  @override
  _SearchFromMainState createState() => _SearchFromMainState();
}

class _SearchFromMainState extends State<SearchFromMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Theme(
              data: ThemeData(
                primaryColor: Colors.grey,
              ),
              child: TextField(
                autofocus: true,
                showCursor: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: blGrey,
                  hintText: 'Places, Dishes, & Cusines',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: 10
                  ),
                ),
                style: TextStyle(
                  fontSize: 16,
                  height: 1.4,
                ),
              ),
            ),
            width: 250,
            height: 40,
          ),
          backgroundColor: blWhite,
          iconTheme: IconThemeData(
            color: blOrange, //change your color here
          ),
        ), 
      body: Text('Second Page'),
    );
  }
}