import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sc_clean_architecture/domain/entities/Wishlist.dart';
import 'package:sc_clean_architecture/utils/utils.dart';

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
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Celebrate',
          color: Theme.of(context).colorScheme.secondaryVariant,
          icon: Icons.celebration,
        ),
      ],
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(mapIcon(product.icon)),
        ),
        title: Text(product.name),
        subtitle: Text(product.price == null ? '' : product.price),
      ),
    );
  }
}
