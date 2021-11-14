import 'package:flutter/cupertino.dart';

class Plan {
  String planName;
  String price;
  String trips;
  String destination;
  String hotelPackage;
  String insurance;
  bool expanded;
  bool selectedPlan;
  Color color;

  Plan({this.planName, this.price, this.trips, this.destination, this.hotelPackage, this.insurance, this.selectedPlan, this.color, this.expanded = false});
}