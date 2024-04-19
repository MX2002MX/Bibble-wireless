import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  final String productBrand;
  final String productName;
  final String price;
  final String imagePath;
  ProductBox({Key? key, required this.productBrand, required this.productName, required this.price, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white, // Set the background color to white
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        imagePath, // Path to your image asset
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10), // Add some spacing between the image and the text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 5),
                          Text(
                            productBrand,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            productName,
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
        ]));
  }
}
