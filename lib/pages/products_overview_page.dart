import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

enum FilterOptions {
  favourite,
  all,
}

class ProductsOverviewPage extends StatefulWidget {
  const ProductsOverviewPage({super.key});

  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  bool _showOnlyFavourites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions value) {
              setState(
                () {
                  if (value == FilterOptions.all) {
                    _showOnlyFavourites = false;
                  } else {
                    _showOnlyFavourites = true;
                  }
                },
              );
            },
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favourite,
                child: Text('Только избранные'),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text('Все'),
              ),
            ],
          )
        ],
        centerTitle: true,
        title: const Text('Магазин'),
      ),
      body: ProductsGrid(
        showFavourite: _showOnlyFavourites,
      ),
    );
  }
}
