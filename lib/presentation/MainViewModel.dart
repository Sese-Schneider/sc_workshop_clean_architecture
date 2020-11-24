import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';

class MainViewModel extends ChangeNotifier {
  MainViewModel() {
    init();
  }

  Future<void> init() async {
    // wishlist = await GetWishlist(WishlistRepoImpl()).call();
    wishlist = Wishlist(<WishlistProduct>[
      WishlistProduct(3, Icons.ac_unit, 'Test Product', '5.99€'),
      WishlistProduct(3, Icons.link, 'Test Link', '15.99€'),
      WishlistProduct(3, Icons.padding, 'Test Tom Designer', '0.99€'),
      WishlistProduct(
          3, Icons.airplanemode_inactive_rounded, 'Test Airplane', '599.45€'),
      WishlistProduct(3, Icons.wb_cloudy_sharp, 'Test Cloud', '12.99€'),
    ]);
    notifyListeners();
  }

  void toggleJanDisplay() {
    showJan = !showJan;
    notifyListeners();
  }

  Wishlist wishlist;

  var showJan = false;
}
