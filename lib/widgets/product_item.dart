import 'package:favourite_shop/providers/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/product_detail_page.dart';

class ProductItem extends StatelessWidget {

  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(product.title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            onPressed: () {
              product.changeFavouriteStatus();
            },
            icon: Icon(
                product.isFavourite ?
                Icons.favorite :
                Icons.favorite_border
            ),
            iconSize: 18,
            color: Theme.of(context).colorScheme.secondary,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            iconSize: 18,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailPage.rout, arguments: product.id);
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