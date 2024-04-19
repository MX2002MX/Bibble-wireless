import 'package:flutter/widgets.dart';
import 'package:snerky/favPage.dart';
import 'navigator.dart';
import 'package:flutter/material.dart';
import 'package:snerky/homePage.dart';

class PaymentPage extends StatelessWidget {
  final String productBrand;
  final String productName;
  final String price;
  final String imagePath;
  PaymentPage(
      {required this.productBrand,
      required this.productName,
      required this.price,
      required this.imagePath});

  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Column(
              children: [
                Text("PAYMENT SUCCESSFUL!", style: TextStyle(fontSize: 20)),
                Image.asset(
                  "assets/images/verify.jpg",
                  width: 70,
                  height: 70,
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text("Transaction Detail",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Divider(),
                        buildTransactionDetailRow(
                            "Invoice Number:", "SB096110152187"),
                        SizedBox(height: 5),
                        buildTransactionDetailRow(
                            "Transaction Reference:", "187152110096"),
                        SizedBox(height: 5),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Transaction Data/Time",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "25 Jan 2024 13:17:51 AM",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 5),
                        buildTransactionDetailRow(
                            "Paid via:", "VISA: 1234 56** **** 3456"),
                        SizedBox(height: 5),
                        buildTransactionDetailRow("Approval Code:", "S3800"),
                        SizedBox(height: 20),
                        Divider(),
                        buildTransactionDetailRow("Description", "Amount"),
                        Divider(),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Text(productBrand,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text(productName)
                              ]),
                              Text(price)
                            ],
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Cloud White / Core Black / Gum, 6UK",
                                style: TextStyle(fontSize: 10))),
                        SizedBox(height: 20),
                        Divider(),
                        buildTotalRow("Total", price),
                        Divider(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 60.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            backgroundColor: Color.fromARGB(255, 24, 164,
                                85), // Use primary for background color
                          ),
                          child: Text(
                            'DONE',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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

  Widget buildTransactionDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    );
  }

  Widget buildDescriptionRow(String brand, String product, String price) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              brand,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("$product & $price"),
          ],
        ),
      ],
    );
  }

  Widget buildTotalRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
