import 'package:flutter/material.dart';
import 'package:sc_clean_architecture/presentation/MainView.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sexy Jan's Wishlist",
      theme: ThemeData(
        primaryColor: Color.fromRGBO(177, 30, 49, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainView(),
    );
  }
}
