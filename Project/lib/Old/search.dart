//import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:snerky/detailPage.dart';

import 'navigator.dart';

class SearchPage extends StatelessWidget {
  int _currentIndex = 1;
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
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), border: Border.all(color: Color.fromARGB(255, 39, 39, 39))),
                  child: TextField(
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
                      floatingLabelStyle: TextStyle(backgroundColor: Colors.white, color: Colors.black),
                      labelText: ' Enter Your Search  ',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the search results page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchResultsPage()),
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
  final List<String> products = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
  ];

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results Page'),
      ),
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection("products").snapshots() , 
                  builder: (context,snapshot) {
                    return ListView.builder (
                      scrollDirection:Axis.vertical ,
                      itemCount:snapshot.data?.docs.length ,
                      itemBuilder:(context,index) {
                        return ProductBox(
                        brand:snapshot.data?.docs[index]['brand'],
                        product:snapshot.data?.docs[index]['product'],
                        price:snapshot.data?.docs[index]['price'],
                        imagePath:snapshot.data?.docs[index]['imagePath'],
                        detail:snapshot.data?.docs[index]['detail']);
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

  const ProductBox({required this.brand, required this.product, required this.price, required this.imagePath, required this.detail});

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
          side: BorderSide(color: Color.fromARGB(95, 134, 134, 134)), // Border color
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
                  style: TextStyle(fontSize: 18.0, color: Color.fromARGB(120, 61, 61, 61), fontWeight: FontWeight.w400),
                ),
              ),

              // Product price
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  price,
                  style: TextStyle(fontSize: 16.0, color: Color.fromARGB(120, 61, 61, 61), fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
