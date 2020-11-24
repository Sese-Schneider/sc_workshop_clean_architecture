import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:sc_clean_architecture/presentation/MainViewModel.dart';
import 'package:sc_clean_architecture/presentation/wishlist_tile.dart';

final mainViewModelProvider = ChangeNotifierProvider<MainViewModel>((ref) {
  return MainViewModel();
});

class MainView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final model = watch(mainViewModelProvider);

    final products = model.wishlist.products;

    return Scaffold(
      appBar: AppBar(
        title: Text("Sexy Jan's Wishlist"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: model.toggleJanDisplay,
        label: const Text('Make a wish come true'),
        icon: const Icon(Icons.card_giftcard_outlined),
      ),
      body: model.showJan
          ? Center(child: Image.asset('assets/christmas_jan.png'))
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return WishlistTile(product: product);
              },
            ),
    );
  }
}
