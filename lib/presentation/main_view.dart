import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:sc_clean_architecture/presentation/MainViewModel.dart';
import 'package:sc_clean_architecture/presentation/sexy_jan.dart';
import 'package:sc_clean_architecture/presentation/wishlist_tile.dart';

final mainViewModelProvider = ChangeNotifierProvider<MainViewModel>((ref) {
  return MainViewModel();
});

class MainView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final model = watch(mainViewModelProvider);

    final products = model.wishlist?.products;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sexy Jan's Wishlist"),
        centerTitle: true,
      ),
      floatingActionButton: model.showJan
          ? null
          : FloatingActionButton.extended(
              onPressed: model.toggleJanDisplay,
              label: const Text('Make all wishes come true'),
              icon: const Icon(Icons.card_giftcard_outlined),
            ),
      body: model.showJan
          ? SexyJan()
          : ListView.builder(
              itemCount: products?.length ?? 0,
              itemBuilder: (context, index) {
                final product = products[index];
                return WishlistTile(product: product);
              },
            ),
    );
  }
}
