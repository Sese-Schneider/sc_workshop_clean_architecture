import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';
import 'package:sc_clean_architecture/domain/usecases/GetWishlist.dart';

class MainViewModel extends ChangeNotifier {
  MainViewModel() {
    init();
  }

  Future<void> init() async {
    wishlist = await GetWishlist(WishlistRepoImpl()).call();
    notifyListeners();
  }

  void toggleJanDisplay() {
    showJan = !showJan;
  }

  Wishlist wishlist;

  bool showJan;
}
