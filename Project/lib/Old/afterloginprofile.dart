import 'package:flutter/material.dart';
import 'navigator.dart';
import 'loginpage.dart'; // Import the LoginPage class from the appropriate file
import 'package:snerky/auth.dart';
import 'package:firebase_auth/firebase_Auth.dart';

class afterprofilepage extends StatelessWidget {
  final User? user = Auth().currentUser;

  Future<void> _showSuccessDialog(BuildContext context, String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button to dismiss dialog
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> signOut(BuildContext context) async {
    await Auth().signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
    _showSuccessDialog(context, 'Logout successful');
  }

  Widget _useremail() {
    return Text(user?.email ?? 'Email');
  }

  Widget _signOutButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => signOut(context),
      child: const Text('Logout'),
    );
  }

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
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: [
          Text('WELCOME BACK'),
          _useremail(),
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
          _signOutButton(context), // Pass the BuildContext
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
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
