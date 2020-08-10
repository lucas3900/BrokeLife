import 'package:flutter/material.dart';

import 'package:BrokeLife/constants/colors.dart';
import 'package:BrokeLife/constants/foodAssets.dart';

class Listing extends StatelessWidget {
  final listingData;
  Listing(this.listingData);
  @override
  Widget build(BuildContext context) {
    var restaurantData = listingData['restaurant'];
    var cuisines = restaurantData['cuisines'].split(',').map((e) => e.trim());
    String mainCuisine = 'Default';
    for (var i in cuisines){
      if (foodImages.containsKey(i)){
        mainCuisine = i;
        break;
      }
    }
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
        onPressed: (){},
        child: Row(
          children: <Widget>[
            Container(
              width: 130,
              height: double.infinity,
              child: Image.asset(
                foodImages[mainCuisine],
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: 230,
                  child: Text(
                    restaurantData['name'],
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 20,
                      color: blOrange,
                    ),
                  ),
                ),
                Text(
                  restaurantData['cuisines'],
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}