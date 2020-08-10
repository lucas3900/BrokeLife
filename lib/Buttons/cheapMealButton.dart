import 'package:flutter/material.dart';

import 'package:BrokeLife/constants/colors.dart';
import 'package:BrokeLife/Animations/fastTransition.dart';
import 'package:BrokeLife/cheapestMeal.dart';

class CheapestMealButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: blWhite,
      margin: EdgeInsets.only(
        left: 20, right: 20,
        top: 10, bottom: 5,
      ),
      child: RaisedButton(
        color: Colors.white,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/dollarSigns.png'),
                  height: 100,
                  width: 100,
                ),
                margin: EdgeInsets.only(left:30),
              ),
              Spacer(flex: 1,),
              Container(
                child: Text(
                  'Find Cheapest \nMeal Near Me',
                  style: TextStyle(
                    color: blOrange,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(right:30),
              ),
            ],
          ),
        ),
        onPressed: (){
          Navigator.push(
            context, 
            FastTransition(
              builder: (context) => CheapestMealScreen()
            )
          );
        },
      ),
    );
  }
}