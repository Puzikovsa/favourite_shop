import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/products.dart';
import '../widgets/product_item.dart';

class ProductsOverviewPage extends StatelessWidget{
  ProductsOverviewPage({super.key});

  final List<Product> loadedProducts = Products().items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Магазин'),
      ),
      body: GridView.builder(
        itemCount: loadedProducts.length,
        padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => ProductItem(product: loadedProducts[index]),
      ),
    );
  }
}