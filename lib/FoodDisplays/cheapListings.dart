import 'package:flutter/material.dart';

import 'package:BrokeLife/FoodDisplays/listing.dart';
import 'package:BrokeLife/constants/colors.dart';


class CheapListings extends StatelessWidget {
  final restaurantData;
  CheapListings(this.restaurantData);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: blGrey,
      child: ListView(
        children: [
          for (var restaurant in restaurantData) Listing(restaurant)
        ],
      ),
    );
  }
}