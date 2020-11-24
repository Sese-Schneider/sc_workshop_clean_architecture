import 'package:flutter/foundation.dart';
import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';
import 'package:sc_clean_architecture/domain/usecases/GetWishlist.dart';

class MainViewModel extends ChangeNotifier {
  MainViewModel();

  Future<void> init() async {
    final wishlist = await GetWishlist(WishlistRepoImpl()).call();
  }

  Wishlist wishlist;
}
