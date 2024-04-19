// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'secureCheckoutPage.dart';
import 'productbox.dart';
import 'navigator.dart';

class CartPage extends StatelessWidget {
  final String productBrand;
  final String productName;
  final String price;
  final String imagePath;

  CartPage(
      {String? productBrand,
      String? productName,
      String? price,
      String? imagePath})
      : productBrand = productBrand ?? "None",
        productName = productName ?? "None",
        price = price ?? "----",
        imagePath = imagePath ?? "assets/images/empty.png";

  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Product details section
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: ProductBox(
                    productBrand: this.productBrand,
                    productName: this.productName,
                    price: this.price,
                    imagePath: this.imagePath)),
            // Spacer to push other elements to the top
            SizedBox(height: MediaQuery.of(context).size.height),
          ],
        ),
      ),
      bottomNavigationBar: NavigationWidget(
        currentIndex: _currentIndex,
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color:
                  Colors.grey.withOpacity(0.5), // Set shadow color and opacity
              spreadRadius: 5, // Set spread radius
              blurRadius: 7, // Set blur radius
              offset: Offset(0, 3), // Set offset to bottom right
            ),
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter coupon code',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.red, // Change the background color here
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecureCheckOutPage(
                            productBrand: this.productBrand,
                            productName: this.productName,
                            price: this.price,
                            imagePath: this.imagePath)),
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    backgroundColor: Color.fromARGB(255, 184, 37, 27)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Checkout',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
