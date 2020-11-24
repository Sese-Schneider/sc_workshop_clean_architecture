import 'package:flutter/material.dart';

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map swatch = <int, Color>{};
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

IconData mapIcon(String icon) {
  switch (icon) {
    case 'star_rate':
      return Icons.star_rate;
    case 'router':
      return Icons.router;
    case 'sports_bar':
      return Icons.sports_bar;
    case 'sanitizer':
      return Icons.sanitizer;
    case 'phone_iphone':
      return Icons.phone_iphone;
    case 'local_drink':
      return Icons.local_drink;
    case 'wc':
      return Icons.wc;
    case 'school':
      return Icons.school;
    default:
      return Icons.ac_unit;
  }
}
