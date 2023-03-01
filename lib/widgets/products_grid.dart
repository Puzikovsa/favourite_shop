import 'package:favourite_shop/providers/products_provider.dart';
import 'package:favourite_shop/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget{
  final bool showFavourite;
  const ProductsGrid({super.key, required this.showFavourite});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products =
        showFavourite ? productsData.favouriteItem
        : productsData.item;


    return GridView.builder(
      itemCount: products.length,
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) =>
          ChangeNotifierProvider.value(
              value: products[index],
              child: const ProductItem()),
    );
  }
}