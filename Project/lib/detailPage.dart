import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snerky/cartPage.dart';
import 'package:snerky/secureCheckoutPage.dart';
import 'navigator.dart'; // Assuming this is your custom navigator file

class DetailPage extends StatelessWidget {
  final String productName;
  final String productBrand;
  final String imagePath;
  final String price;
  final String detail;
  final Key? key;
  bool isSelected = false;

  int _currentIndex = 3;

  DetailPage({
    this.key,
    required this.productName,
    required this.productBrand,
    required this.imagePath,
    required this.price,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imagePath),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productBrand,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        price,
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    productName,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
                    textAlign: TextAlign.left,
                  ),
                ),
                Divider(),
                Text('$detail'),
                Divider(),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Size",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "EUR",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(width: 8),
                            Text("UK", style: TextStyle(fontSize: 18)),
                            SizedBox(width: 8),
                            Text("US", style: TextStyle(fontSize: 18))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizeBox(size: '37', isSelected: isSelected),
                      SizedBox(width: 5),
                      SizeBox(size: '38', isSelected: isSelected),
                      SizedBox(width: 5),
                      SizeBox(size: '39', isSelected: isSelected),
                      SizedBox(width: 5),
                      SizeBox(size: '40', isSelected: isSelected),
                      SizedBox(width: 5),
                      SizeBox(size: '41', isSelected: isSelected),
                      SizedBox(width: 5),
                      SizeBox(size: '42', isSelected: isSelected),
                      SizedBox(width: 5),
                      SizeBox(size: '43', isSelected: isSelected),
                      SizedBox(width: 5),
                      SizeBox(size: '44', isSelected: isSelected),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartPage(
                                      productBrand: this.productBrand, productName: this.productName, price: this.price, imagePath: this.imagePath)));
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 18.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          backgroundColor: Colors.black, // Use primary for background color
                        ),
                        child: Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Add some spacing between the buttons
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecureCheckOutPage(
                                      productBrand: this.productBrand, productName: this.productName, price: this.price, imagePath: this.imagePath)));
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          backgroundColor: Color.fromARGB(255, 184, 37, 27), // Use primary for background color
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Checkout",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              this.price,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationWidget(
        currentIndex: _currentIndex,
      ),
    );
  }
}

class SizeBox extends StatefulWidget {
  final String size;
  final bool isSelected;

  const SizeBox({Key? key, required this.size, required this.isSelected}) : super(key: key);

  @override
  _SizeBoxState createState() => _SizeBoxState();
}

class _SizeBoxState extends State<SizeBox> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected; // Toggle selection state
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: _isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: _isSelected ? Colors.transparent : Colors.black,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              Text(
                widget.size,
                style: TextStyle(
                  color: _isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
