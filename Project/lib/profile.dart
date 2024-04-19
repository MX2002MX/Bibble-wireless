import 'package:flutter/material.dart';
import 'navigator.dart';
import 'loginpage.dart'; // Import the LoginPage class from the appropriate file

class profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 4;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.login),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: [
          Text(
            "Account",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          ProductBox(
            name: "Edit Profile",
          ),
          ProductBox(
            name: "Security",
          ),
          ProductBox(
            name: "Notification",
          ),
          ProductBox(
            name: "Privacy",
          ),
          Text(''),
          Text(
            "Support & About",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          ProductBox(
            name: "Cart",
          ),
          ProductBox(
            name: "Help & support",
          ),
          ProductBox(
            name: "Terms and Poilicies",
          ),
          Text(''),
          Text(
            "Actions",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          ProductBox(
            name: "Report a Problem",
          ),
          ProductBox(
            name: "Add Account",
          ),
        ],
      ),
      bottomNavigationBar: NavigationWidget(
        currentIndex: _currentIndex,
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 80,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      this.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
