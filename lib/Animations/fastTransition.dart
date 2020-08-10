import 'package:flutter/material.dart';

class FastTransition extends MaterialPageRoute {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 600);
  FastTransition({builder}) : super(builder: builder);
}