import 'package:flutter/material.dart';
import 'components/shop_page.dart';

void main() {
  runApp(FruitSaladApp());
}

class FruitSaladApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello Abdo,", style: TextStyle(color: Colors.black54)),
              Text(
                "What fruit salad combo do you want today?",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_bag, color: Colors.deepOrange),
              onPressed: () {},
            ),
          ],
        ),
        body: FruitSaladHome(), // moved to another file
      ),
    );
  }
}
