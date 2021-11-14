import 'package:flutter/material.dart';

class AppColors {

  static const kPrimaryColor = Color(0xFF075F63);
  static const kTextColor = Color(0xFF328279);
  static const kTextLigntColor = Color(0xFF65A688);
  static const firstClassColor = Color(0xFF812B3F);
  static const premiumEconClassColor = Color(0xFF408CA4);
  static const businessClassColor = Color(0xFF113267);
  static const darkSandColor = Color(0xFF857A5A);
  static const sandColor = Color(0xFFBEB79A);
  static const lightSand  = Color(0xFFDCD7C1);
  static const grey  = Color(0xFF86878B);
  static const slate  = Color(0xFFC4C5C7);
  static const lightSlate  = Color(0xFFECECEC);
  static const dark  = Color(0xFF3E3E3E);

  static MaterialColor primarySwatch = createMaterialColor(kPrimaryColor);

}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}