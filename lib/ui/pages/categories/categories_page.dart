import 'package:flutter/material.dart';
import 'package:scaffold_class_app/mocks/mock_categories.dart';
import 'package:scaffold_class_app/model/category.dart';
import 'package:scaffold_class_app/strings.dart';
import 'package:scaffold_class_app/ui/components/category_card.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<Category> categories = [];

  @override
  void initState() {
    categories = MockCategories.getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.CATEGORIES_TITLE),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort_by_alpha))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: categories.map((e) => CategoryCard(e)).toList(),
        ),
      ),
    );
  }
}
