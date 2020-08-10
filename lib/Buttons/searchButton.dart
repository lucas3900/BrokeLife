import 'package:flutter/material.dart';

import 'package:BrokeLife/constants/colors.dart';
import 'package:BrokeLife/Animations/fastTransition.dart';
import 'package:BrokeLife/searchFromMain.dart';

class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          Navigator.push(
            context, 
            FastTransition(
              builder: (context) => SearchFromMain()
            )
          );
        },
        color: blOrange,
        padding: EdgeInsets.only(right: 10),
      );
  }
}