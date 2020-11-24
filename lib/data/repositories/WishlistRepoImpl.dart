import 'package:sc_clean_architecture/data/data_sources/WishlistDataSource.dart';
import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';
import 'package:sc_clean_architecture/domain/repositories/WishlistRepo.dart';

class WishlistRepoImpl extends WishlistRepo {
  WishlistRepoImpl(this.dataSource);

  final WishlistDataSource dataSource;

  Future<Wishlist> getWishlist() async {
    return dataSource.getWishlist();
  }
}
