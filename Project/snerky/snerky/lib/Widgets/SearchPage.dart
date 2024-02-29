import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 255, 255),
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your search',
              ),
            ),
            SizedBox(height: 20),
           ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => SearchResultsPage()),
                );
              },
              child: Text('Search'),
            ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Shearch'),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchResultsPage extends StatelessWidget {
  final List<String> products = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index]),
              // Add more details like product images, descriptions, etc.
            );
          },
        ),
      ),
    );
  }
}
