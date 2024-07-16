import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Shoes\nCollection',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    )));
  }
}
