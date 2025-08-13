import 'package:flutter/material.dart';

void main() {
  runApp(FruitSaladApp());
}

class FruitSaladApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FruitSaladHome(),
    );
  }
}

class FruitSaladHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello Abdo,", style: TextStyle(color: Colors.black54)),
              Text("What fruit salad combo do you want today?",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_bag, color: Colors.deepOrange),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Search bar
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for fruit salad combos',
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.tune, color: Colors.deepOrange),
                  )
                ],
              ),

              SizedBox(height: 20),

              Text("Recommended Combo", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comboCard("Honey lime combo", " 2,000 EGP", "assets/images/honey.png"),
                    comboCard("Berry mango combo", " 8,000 EGP", "assets/images/berry.png"),
                  ],
                ),
              ),


              TabBar(
                isScrollable: true,
                labelColor: Colors.deepOrange,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "Hottest"),
                  Tab(text: "Popular"),
                  Tab(text: "New combo"),
                  Tab(text: "Top"),
                ],
              ),
              SizedBox(height: 10),

              Expanded(
                child: TabBarView(
                  children: [
                    ItemsList(), //hottest
                    ItemsList(),  // popular
                    ItemsList(),  // new combo
                    ItemsList(), // top
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget comboCard(String name, String price, String imagePath) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.orangeAccent.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(price, style: TextStyle(color: Colors.deepOrange)),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Icon(Icons.favorite_border, size: 20, color: Colors.pink),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.add, color: Colors.white, size: 16),
            ),
          ),
        ],
      ),
    );
  }


  Widget ItemsList() {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 180, // same height as your upper cards
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            comboCard("Quinoa fruit salad", "10,000 EGP", "assets/images/quinoa.png"),
            comboCard("Tropical fruit salad", "10,000 EGP", "assets/images/tropical.png"),
            comboCard("Quinoa fruit salad", "10,000 EGP", "assets/images/quinoa.png"),
            comboCard("Tropical fruit salad", "10,000 EGP", "assets/images/tropical.png"),
          ],
        ),
      ),
    );
  }
}
