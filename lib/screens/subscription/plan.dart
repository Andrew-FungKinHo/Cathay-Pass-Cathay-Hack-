import 'package:flutter/cupertino.dart';

class Plan {
  String planName;
  String price;
  String trips;
  String destination;
  String hotelPackage;
  bool expanded;
  Color color;

  Plan({this.planName, this.price, this.trips, this.destination, this.hotelPackage, this.color, this.expanded = false});
}