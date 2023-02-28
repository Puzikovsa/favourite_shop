import 'package:favourite_shop/pages/product_detail_page.dart';
import 'package:favourite_shop/pages/products_overview_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ).copyWith(
            secondary: Colors.deepOrange,
        ),
      ),
      home: ProductsOverviewPage(),
      routes: {
        ProductDetailPage.rout :
            (context) => const ProductDetailPage(),
      },
    );
  }
}