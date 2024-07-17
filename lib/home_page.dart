import 'package:flutter/material.dart';
import 'package:shop_app_flutter/global_varibale.dart';
import 'package:shop_app_flutter/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final borderStyle = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      borderSide: BorderSide(color: Color.fromRGBO(143, 143, 143, 1)));
  final List<String> filters = const [
    'All',
    'Addidas',
    'Nike',
    'Puma',
    'Reebok',
    'Vans',
    'Converse'
  ];
  late String selectedFilter = filters[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Shoes\nCollection',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      border: borderStyle,
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filters.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedFilter = filters[index];
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Chip(
                      backgroundColor: selectedFilter == filters[index]
                          ? Colors.blue
                          : Colors.white,
                      label: Text(filters[index]),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      side: const BorderSide(
                        color: Color.fromRGBO(232, 232, 233, 1),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                );
              }),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, ind) {
                final product = products[ind];
                return ProductCard(
                  title: product['title'].toString(),
                  price: 10,
                  image: product['imageUrl'].toString(),
                );
              }),
        )
      ],
    )));
  }
}
