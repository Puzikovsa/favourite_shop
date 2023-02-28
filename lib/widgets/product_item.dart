import 'package:favourite_shop/models/product.dart';
import 'package:flutter/material.dart';

import '../pages/product_detail_page.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(product.title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            iconSize: 18,
            onPressed: () {},
          icon: const Icon(Icons.favorite),
          color: Theme.of(context).colorScheme.secondary,
          ),
          trailing: IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailPage.rout);
          },
          child: Image.network(
            product.imageURL,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

}