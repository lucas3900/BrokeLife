import 'package:BrokeLife/constants/foodAssets.dart';
import 'package:flutter/cupertino.dart';

class RestaurantData {
  final _restaurantData;
  String name;
  String cuisines;
  String averageCost;
  int ratingVotes;
  double userRating;
  var restaurantImage;
  Map<String, String> locationData = {};
  RestaurantData(this._restaurantData){
    this.name = this._restaurantData['name'];
    this.cuisines = this._restaurantData['cuisines'];
    this.averageCost = (this._restaurantData['average_cost_for_two']/2).toString();
    this.ratingVotes = _restaurantData['user_rating']['votes'];
    var _userRating = _restaurantData['user_rating']['aggregate_rating'];
    this.userRating = _userRating is String ? double.parse(_userRating) : _userRating.toDouble();
    String _mainCuisine = 'Default';
    for (var i in this.cuisines.split(',').map((e) => e.trim())){
      if (foodImages.containsKey(i)){
        _mainCuisine = i;
        break;
      }
    }
    _restaurantData['featured_image'] == '' ?
      _restaurantData['thumb'] != '' ?
        this.restaurantImage = Image.network(_restaurantData['thumb'], fit: BoxFit.fill)
      : this.restaurantImage = Image.asset(foodImages[_mainCuisine], fit: BoxFit.fill)
    : this.restaurantImage = Image.network(_restaurantData['featured_image'], fit: BoxFit.fill);
    var _locationData = _restaurantData['location'];
    this.locationData['zipCode'] = _locationData['zipcode'];
    this.locationData['city'] = _locationData['city'];
    String _streetAddress = _locationData['address'];
    int _commaIndex = _streetAddress.indexOf(',');
    if (_commaIndex > 0){
      this.locationData['streetAddress'] = _streetAddress.substring(0, _commaIndex);
    } else {
      int _optionalZipCode = _streetAddress.indexOf(RegExp(r'\d{5}\s*$'));
      if (_optionalZipCode > 0){
        this.locationData['streetAddress'] = _streetAddress.substring(0, _optionalZipCode-1);
      } else {
        this.locationData['streetAddress'] = _streetAddress;
      }
    }
  }
}