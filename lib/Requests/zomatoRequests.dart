import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:BrokeLife/Requests/geoLocator.dart';


Future<String> getKey() async {
  final _secret = FlutterSecureStorage();
  String key =  await _secret.read(key:'ZOMATO_API_KEY');
  return key;
}

Future<List> getZomatoResponse(String urlSuffix) async {
  String url = 'https://developers.zomato.com/api/v2.1/'+urlSuffix;
  String zomatoAPIKey = await getKey();
  Map<String, String> headers = {
    'Accept': 'application/json',
    "user_key": zomatoAPIKey,
  };
  http.Response response = await http.get(url, headers: headers);
  return json.decode(response.body)['restaurants'];
}

Future<List> cheapestMeal() async {
  var currLocation = await getCurrentLocation();
  String urlSuffix = 'search?count=15&lat=${currLocation.latitude}&lon=${currLocation.longitude}&sort=cost&order=asc';
  return getZomatoResponse(urlSuffix);
}