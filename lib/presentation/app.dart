import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:sc_clean_architecture/presentation/main_view.dart';
import 'package:sc_clean_architecture/utils/utils.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: "Sexy Jan's Wishlist",
        theme: ThemeData(
          primarySwatch: createMaterialColor(Color.fromRGBO(177, 30, 49, 1)),
          accentColor: Color.fromRGBO(180, 61, 61, 1),
          brightness: Brightness.dark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainView(),
      ),
    );
  }
}
