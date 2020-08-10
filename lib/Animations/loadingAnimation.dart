import 'package:flutter/material.dart';

import 'package:BrokeLife/constants/colors.dart';

class LoadingAnimation extends StatelessWidget {
  final dimensions;
  LoadingAnimation(this.dimensions);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox( 
        height: dimensions,
        width: dimensions,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(blOrange),
          strokeWidth: 20,
        ),
      ),
    );
  }
}