import 'package:flutter/material.dart';
import 'package:scaffold_class_app/model/product.dart';

class ProductCard extends StatefulWidget {
  final Product _product;
  const ProductCard(this._product, {super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  _isFavorited = !_isFavorited;
                });
              },
              icon: Icon(
                _isFavorited ? Icons.favorite : Icons.favorite_outline,
                size: 32,
                color: _isFavorited ? Colors.red : Colors.grey,
              )),
        ],
      ),
      footer: Container(
        margin: const EdgeInsets.only(left: 4, right: 4, bottom: 4),
        height: 32,
        color: Colors.black54,
        child: Center(
            child: Text(
          widget._product.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.white),
        )),
      ),
      child: Card(
        elevation: 4,
        child: SizedBox(
          child: Image.network(widget._product.imageURL),
        ),
      ),
    );
  }
}
