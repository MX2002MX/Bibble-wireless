import 'dart:async';

import 'package:flutter/material.dart';
import 'package:snerky/paymentPage.dart';
import 'productbox.dart';
import 'navigator.dart';
import 'paymentPage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SecureCheckOutPage extends StatelessWidget {
  final String productBrand;
  final String productName;
  final String price;
  final String imagePath;
  SecureCheckOutPage(
      {required this.productBrand,
      required this.productName,
      required this.price,
      required this.imagePath});

  int _currentIndex = 3;

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _initialPosition = CameraPosition(
    target: LatLng(13.7982, 100.3297),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secure Checkout'),
      ),
      body: Container(
        color: Colors.grey[200], // Set the overall background color to gray
        child: SingleChildScrollView(
          // padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  'Delivery to',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              _buildInfoBox(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: const Text(
                    '123 Main Street\nCity, State, Zip Code',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 20, width: double.infinity),
              const Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Select Delivery Location',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 200,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _initialPosition,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
              SizedBox(height: 20, width: double.infinity),
              const Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Product Details',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ProductBox(
                  productBrand: this.productBrand,
                  productName: this.productName,
                  price: this.price,
                  imagePath: this.imagePath),
              SizedBox(height: 20, width: double.infinity),
              const Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Saved Payment Method',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              _buildInfoBox(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: const Text(
                    '**** **** **** 1234\nExpiry: 12/24',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 20, width: double.infinity),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                      'Other Payment Method',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color to white
                      border:
                          Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    ///color: Colors.white,
                    child: Column(
                      children: [
                        _buildPaymentMethodItem(
                            'Credit Card / Debit Card', 'Promotion avaliable'),
                        Divider(),
                        _buildPaymentMethodItem(
                            'Bank Transfer / Counter Services',
                            'Using a reference code'),
                        Divider(),
                        _buildPaymentMethodItem('Pay On Delivery',
                            'Messenger will contact you for a confirmation'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20, width: double.infinity),
              _buildInfoBox(
                child: Container(
                  height: 60,
                  padding: EdgeInsets.all(10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.task_outlined), // Icon widget
                          SizedBox(
                              width:
                                  10), // Add some space between icon and text
                          Text(
                            'Do you require a full tax invoice',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right_outlined), // Second Icon widget
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20, width: double.infinity),
              _buildInfoBox(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Subtotal - 1 item',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            price,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Delivery Charges',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            price,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Order Total',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            price,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'By placing order, you accept and agree to',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Term & Conditions and Privacy.',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                          width: double.infinity,
                        ), // Add space between the texts
                        Text(
                          'FAQs | Contact',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentPage(
                              productBrand: this.productBrand,
                              productName: this.productName,
                              price: this.price,
                              imagePath: this.imagePath)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 18.0, horizontal: 100.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    backgroundColor: Color.fromARGB(
                        255, 184, 37, 27), // Use primary for background color
                  ),
                  child: const Text(
                    'Place Order',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationWidget(
        currentIndex: _currentIndex,
      ),
    );
  }

  Widget _buildPaymentMethodItem(String paymentMethod, String paymentDetail) {
    return Padding(
      padding: EdgeInsets.only(left: 10), // Adjust padding as needed
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1,
              color: Colors.black, // Adjust the color as per your need
            ),
          ),
        ),
        title: Text(paymentMethod),
        subtitle: Text(paymentDetail), // New line to display payment detail
      ),
    );
  }

  Widget _buildInfoBox({required Widget child}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white, // Set the background color to white
        border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Divider(), // Horizontal line as a separator
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          child,
        ],
      ),
    );
  }
}
