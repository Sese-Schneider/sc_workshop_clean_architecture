import 'package:flutter/material.dart';
import 'package:sc_clean_architecture/couchbase/couchbase.dart';
import 'package:sc_clean_architecture/data/data_sources/WishlistDataSource.dart';
import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';

class WishlistDataSourceImpl extends WishlistDataSource {
  final db = CouchbaseDb();

  Future<Wishlist> getWishlist() async {
    final List<Map<String, dynamic>> arr = db.query()['products'];

    final products = arr
        .map((e) => WishlistProduct(e['id'], e['icon'], e['name'], e['price']))
        .toList();

    final wishlist = Wishlist(products);

    return wishlist;
  }
}
