import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';

abstract class WishlistRepo {
  Future<Wishlist> getWishlist();
}
