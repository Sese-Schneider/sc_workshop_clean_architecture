import 'package:flutter/material.dart';
import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';

/// Widget for [WishlistProduct].
class WishlistTile extends StatelessWidget {
  /// Constructs a [WishlistTile] widget.
  const WishlistTile({
    Key key,
    @required this.product,
  })  : assert(product != null),
        super(key: key);

  final WishlistProduct product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Theme.of(context).colorScheme.background,
      leading: CircleAvatar(
        child: Icon(Icons.sanitizer_outlined),
      ),
    );
  }
}
