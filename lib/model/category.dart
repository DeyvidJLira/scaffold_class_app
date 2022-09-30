import 'package:scaffold_class_app/model/product.dart';

class Category {
  String name;
  String description;
  String imageURL;
  List<Product> products;

  Category(
      {required this.name,
      required this.description,
      required this.imageURL,
      required this.products});
}
