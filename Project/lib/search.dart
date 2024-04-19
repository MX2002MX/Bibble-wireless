//import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:snerky/detailPage.dart';

import 'navigator.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _currentIndex = 1;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(color: Color.fromARGB(255, 39, 39, 39)),
              ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelStyle: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                  ),
                  labelText: ' Enter Your Brand  ',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the search results page with the search query
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchResultsPage(
                      searchQuery: _searchController.text,
                    ),
                  ),
                );
              },
              child: Text('Search'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationWidget(
        currentIndex: _currentIndex,
      ),
    );
  }
}

class SearchResultsPage extends StatelessWidget {
  final String searchQuery;

  SearchResultsPage({required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results Page'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("products").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          final List<DocumentSnapshot> documents = snapshot.data!.docs;

          // Check if searchQuery is empty
          if (searchQuery.isEmpty) {
            // Return an empty container if searchQuery is empty
            return Container();
          }

          // Filter products based on the brand name
          final List<DocumentSnapshot> filteredProducts =
              documents.where((doc) {
            final String brand = doc['brand'].toString().toLowerCase();

            // Include products that contain the search query in their brand name
            return brand.contains(searchQuery.toLowerCase());
          }).toList();

          return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: filteredProducts.length,
            itemBuilder: (context, index) {
              return ProductBox(
                brand: filteredProducts[index]['brand'],
                product: filteredProducts[index]['product'],
                price: filteredProducts[index]['price'],
                imagePath: filteredProducts[index]['imagePath'],
                detail: filteredProducts[index]['detail'],
              );
            },
          );
        },
      ),
      bottomNavigationBar: NavigationWidget(
        currentIndex: _currentIndex,
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final String brand;
  final String product;
  final String price;
  final String imagePath;
  final String detail;

  const ProductBox(
      {required this.brand,
      required this.product,
      required this.price,
      required this.imagePath,
      required this.detail});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(
                productName: this.product,
                productBrand: this.brand,
                price: this.price,
                imagePath: this.imagePath,
                detail: this.detail,
              ),
            ));
      },
      style: ElevatedButton.styleFrom(
        //fixedSize: Size(50, 50),
        padding: EdgeInsets.all(8.0),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
              color: Color.fromARGB(95, 134, 134, 134)), // Border color
        ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Product picture
              SizedBox(
                width: 120,
                height: 120,
                child: Center(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              // Product name
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  brand,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  product,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(120, 61, 61, 61),
                      fontWeight: FontWeight.w400),
                ),
              ),

              // Product price
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  price,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(120, 61, 61, 61),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
