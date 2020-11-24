import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sc_clean_architecture/data/data_sources/WishlistDataSourceImpl.dart';
import 'package:sc_clean_architecture/data/repositories/WishlistRepoImpl.dart';
import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';
import 'package:sc_clean_architecture/domain/usecases/GetWishlist.dart';

class MainViewModel extends ChangeNotifier {
  MainViewModel() {
    init();
  }

  Future<void> init() async {
    wishlist =
        await GetWishlist(WishlistRepoImpl(WishlistDataSourceImpl())).call();
    notifyListeners();
  }

  void toggleJanDisplay() {
    showJan = !showJan;
    notifyListeners();
  }

  Wishlist wishlist;

  var showJan = false;
}
