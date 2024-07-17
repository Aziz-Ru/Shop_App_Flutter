import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  const ProductCard({
    super.key,
    required this.title,
    required this.price, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text(title),
         const SizedBox(height: 5),
          Text('\$$price'),
          Image(image: AssetImage(image),),
        ],
      ),
    );
  }
}
