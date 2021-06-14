import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:BrokeLife/constants/colors.dart';
import 'package:BrokeLife/Buttons/searchButton.dart';
import 'package:BrokeLife/Buttons/shareButton.dart';

class RestaurantDisplay extends StatelessWidget {
  final restaurantData;
  RestaurantDisplay(this.restaurantData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blGrey,
      appBar: AppBar(
        backgroundColor: blWhite,
        iconTheme: IconThemeData(color: blOrange),
        title: Text('BrokeLife',
          style: TextStyle(
            color: blOrange,
          )
        ),
        actions: <Widget>[
          SearchButton(),
          ShareButton(),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: restaurantData.restaurantImage,
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left:10, top:10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurantData.name,
                  style: TextStyle(
                    color: blOrange,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  restaurantData.locationData['streetAddress'],
                  style: TextStyle(
                    fontSize: 18
                  )
                ),
                SizedBox(height: 3,),
                Text(
                  '${restaurantData.locationData['city']}, ${restaurantData.locationData['zipCode']}',
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
                SizedBox(height: 8),
                restaurantData.ratingVotes > 0 ?
                  Row(
                    children: [ 
                      Text(
                        restaurantData.userRating.toString() + ' Stars',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: 
                            restaurantData.userRating >= 3.5 ? Colors.green[300]
                              : restaurantData.userRating  >= 2 ? Colors.orange[300]
                                : Colors.red
                        ),
                      ),
                      SizedBox(width: 20,),
                      RatingBarIndicator(
                        rating: restaurantData.userRating,
                        itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 20,
                      ),
                      SizedBox(width: 20),
                      Text(
                        restaurantData.ratingVotes.toString() + ' Ratings',
                        style: TextStyle(
                          fontSize: 18
                        ),
                      )
                    ]
                  )
                : Text(
                  'No Ratings',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            width: double.infinity,
            height: 145,
            decoration: BoxDecoration(
              color: blWhite,
              boxShadow: [
                BoxShadow(
                  color: blGrey.withOpacity(0.7),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]
            )
          ),
          SizedBox(height: 15,),
          Container(
            width: double.infinity,
            height: 165,
            decoration: BoxDecoration(
              color: blWhite,
              boxShadow: [
                BoxShadow(
                  color: blGrey.withOpacity(0.7),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]
            ),
            padding: EdgeInsets.only(left:10, top:10),
            child: Column(
              children: [
                Text('hello')
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 165,
              decoration: BoxDecoration(
                color: blGrey,
                boxShadow: [
                  BoxShadow(
                    color: blGrey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.restaurant_menu,
                          size: 40,
                        ),
                        Text('Menu'),
                      ],
                    ),
                    color: blGrey,
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.map,
                          size: 40,
                        ),
                        Text('Menu'),
                      ],
                    ),
                    color: blGrey,
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.restaurant_menu,
                          size: 40,
                        ),
                        Text('Menu'),
                      ],
                    ),
                    color: blGrey,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}