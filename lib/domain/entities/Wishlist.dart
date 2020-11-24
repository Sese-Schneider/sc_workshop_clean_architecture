class Wishlist {
  Wishlist(this.products);

  List<WishlistProduct> products;
}

class WishlistProduct {
  WishlistProduct(this.id, this.icon, this.name, this.price);

  int id;

  String icon;

  String name;

  /// Price with currency.
  String price;
}
