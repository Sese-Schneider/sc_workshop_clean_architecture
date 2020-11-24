import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';
import 'package:sc_clean_architecture/domain/repositories/WishlistRepo.dart';

class GetWishlist {
  GetWishlist(this._repo);

  final WishlistRepo _repo;

  Future<Wishlist> call() async {
    return _repo.getWishlist();
  }
}
