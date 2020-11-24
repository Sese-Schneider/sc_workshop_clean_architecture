import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';

abstract class WishlistDataSource {
  Future<Wishlist> getWishlist();
}
