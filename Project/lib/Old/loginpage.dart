import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_Auth.dart';
import 'package:snerky/auth.dart';
import 'package:snerky/navigator.dart';
import 'package:snerky/afterloginprofile.dart'; // Import your homepage file

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = true;
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  int _currentIndex = 4;

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

  Future<void> _signInWithEmailAndPassword(BuildContext context) async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );

      // Navigate to the home page upon successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => afterprofilepage()),
      );

      // Show success dialog for login
      _showSuccessDialog(context, 'Login successful');
    } on FirebaseAuthException catch (e) {
      // Login failed, handle the error
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> _createUserWithEmailAndPassword(BuildContext context) async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );

      // Navigate to the home page upon successful registration
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => afterprofilepage()),
      );

      // Show success dialog for registration
      _showSuccessDialog(context, 'Registration successful');
    } on FirebaseAuthException catch (e) {
      // Registration failed, handle the error
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _field(String title, TextEditingController controller, {bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: title,
      ),
    );
  }

  Widget _errormsg() {
    return Text(errorMessage == '' ? '' : '$errorMessage');
  }

  Widget submitbutton() {
    return ElevatedButton(
      onPressed: isLogin ? () => _signInWithEmailAndPassword(context) : () => _createUserWithEmailAndPassword(context),
      child: Text(isLogin ? 'Login' : 'Register'),
    );
  }

  Widget loginbutton() {
    return TextButton(
      onPressed: () {
        setState(() {
          // Toggle between login and register
          isLogin = !isLogin;
        });
      },
      child: Text(isLogin ? 'Register' : 'Login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/profile.png'),
                  height: 100,
                ),
                Text(isLogin ? 'Login' : 'Register', style: TextStyle(fontSize: 20, color: Colors.blue)),
                _field('Email', _controllerEmail),
                _field('Password', _controllerPassword, obscureText: true),
                _errormsg(),
                submitbutton(),
                loginbutton(),
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
