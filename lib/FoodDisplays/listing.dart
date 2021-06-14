import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:BrokeLife/constants/colors.dart';
import 'package:BrokeLife/Animations/fastTransition.dart';
import 'package:BrokeLife/FoodDisplays/restaurantDisplay.dart';
import 'package:BrokeLife/Structs/restaurantData.dart';

class Listing extends StatelessWidget {
  final listingData;
  RestaurantData restaurantData;
  Listing(this.listingData){
    this.restaurantData = RestaurantData(this.listingData['restaurant']);
  }
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
        padding: EdgeInsets.only(left: 0),
        color: blWhite,
        onPressed: (){
          Navigator.push(
            context, 
            FastTransition(
              builder: (context) => RestaurantDisplay(restaurantData),
            )
          );
        },
        child: Row(
          children: <Widget>[
            Container(
              width: 130,
              height: double.infinity,
              child: restaurantData.restaurantImage,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  width: 230,
                  child: Text(
                    restaurantData.name,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 24,
                      color: blOrange,
                    ),
                  ),
                ),
                Text(
                  restaurantData.cuisines,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Average Cost: \$'+restaurantData.averageCost+'0',
                      style: TextStyle(
                        color: blGreen,
                        fontSize: 16,
                      )
                    ),
                    SizedBox(width: 5),
                    if (restaurantData.ratingVotes > 0)
                      RatingBarIndicator(
                        rating: restaurantData.userRating,
                        itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 13.0,
                      ),
                  ]
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}