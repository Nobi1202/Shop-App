import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(
      {required this.imageUrl, required this.title, required this.id, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
