import 'package:flutter/material.dart';
import 'package:sc_clean_architecture/presentation/MainView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sexy Jan's Wishlist",
      theme: ThemeData(
        primaryColor: Color.fromRGBO(177, 30, 49, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sexy Jan's Wishlist"),
        ),
        body: MainView(),
      ),
    );
  }
}
