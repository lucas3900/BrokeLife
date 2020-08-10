import 'package:flutter/material.dart';
import 'dart:async';

import 'package:BrokeLife/constants/colors.dart';
import 'package:BrokeLife/Animations/loadingAnimation.dart';
import 'package:BrokeLife/Requests/zomatoRequests.dart';
import 'package:BrokeLife/FoodDisplays/cheapListings.dart';

class CheapestMealScreen extends StatefulWidget {
  @override
  _CheapestMealScreenState createState() => _CheapestMealScreenState();
}

class _CheapestMealScreenState extends State<CheapestMealScreen> {
  Future mealInfo;

  @override
  void initState() {
    super.initState();
    mealInfo = _getCheapRestaurants();
  }

  _getCheapRestaurants() async {
    return await cheapestMeal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BrokeLife'),
        backgroundColor: blWhite,
        iconTheme: IconThemeData(
          color: blOrange,
        ),
      ),
      body: Container(
        child: FutureBuilder(
          future: mealInfo,
          builder: (context, snapshot) {
            switch (snapshot.connectionState){
              case ConnectionState.none:
                return Scaffold(
                  body: Text('none'),
                );
              case ConnectionState.active:
                return LoadingAnimation(150.0);
              case ConnectionState.waiting:
                return LoadingAnimation(150.0);
              case ConnectionState.done:
                return CheapListings(snapshot.data);
              default:
                return Scaffold(
                  body: Text('Something Went Wrong'),
                );
            }
          },
        ),
      ),
    );
  }
}