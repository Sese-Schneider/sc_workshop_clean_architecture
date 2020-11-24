import 'package:flutter/material.dart';

class Wishlist {
  Wishlist(this.products);

  List<WishlistProduct> products;
}

class WishlistProduct {
  WishlistProduct(this.id, this.icon, this.name, this.price);

  int id;

  IconData icon;

  String name;

  double price;
}
