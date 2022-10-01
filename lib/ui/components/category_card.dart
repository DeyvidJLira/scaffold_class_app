import 'package:flutter/material.dart';
import 'package:scaffold_class_app/model/category.dart';
import 'package:scaffold_class_app/strings.dart';

class CategoryCard extends StatelessWidget {
  final Category _category;

  const CategoryCard(this._category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      elevation: 4,
      child: Container(
        height: 120,
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: Image.network(_category.imageURL),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(_category.name),
                ),
                Expanded(
                  child: Text(
                    _category.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 36,
                  child: ElevatedButton(
                    child: const Text(Strings.COMPONENT_CATEGORY_BUTTON_VISIT),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
