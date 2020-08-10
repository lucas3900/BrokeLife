import 'package:flutter/material.dart';

import 'package:BrokeLife/constants/colors.dart';

class InfoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.more_horiz),
      onPressed: () {},
      color: blOrange,
      padding: EdgeInsets.only(right: 25),
    );
  }
}