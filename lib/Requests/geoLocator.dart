import 'package:geolocator/geolocator.dart';

Future<Position> getCurrentLocation() async {
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  return await geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
}