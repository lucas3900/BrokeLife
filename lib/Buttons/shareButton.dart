import 'package:flutter/material.dart';

import 'package:BrokeLife/constants/colors.dart';

class ShareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.share),
      onPressed: () {},
      color: blOrange,
      padding: EdgeInsets.only(right: 25),
    );
  }
}