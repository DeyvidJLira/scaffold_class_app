import 'package:flutter/material.dart';
import 'package:scaffold_class_app/mocks/mock_products.dart';
import 'package:scaffold_class_app/ui/components/product_card.dart';

import '../../../model/product.dart';

class HomeContentPage extends StatefulWidget {
  const HomeContentPage({super.key});

  @override
  State<HomeContentPage> createState() => _HomeContentPageState();
}

class _HomeContentPageState extends State<HomeContentPage> {
  List<Product> _products = [];

  @override
  void initState() {
    _products = MockProducts.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text("Produtos", style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            height: 3,
            color: Colors.black54,
            thickness: 2,
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: _products.map((e) => ProductCard(e)).toList(),
          ))
        ],
      ),
    );
  }
}
