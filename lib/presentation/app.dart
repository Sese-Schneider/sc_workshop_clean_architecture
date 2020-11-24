import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:sc_clean_architecture/presentation/MainView.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: "Sexy Jan's Wishlist",
        theme: ThemeData(
          primaryColor: Color.fromRGBO(177, 30, 49, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainView(),
      ),
    );
  }
}