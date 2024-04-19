import 'package:flutter/material.dart';
import 'package:snerky/firebase_options.dart';
import 'profile.dart';
import 'cartPage.dart';
import 'favPage.dart';
import 'homePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:snerky/search.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

//Class 1
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Define initialRoute here

      routes: {
        '/': (context) => HomePage(),
        '/cart': (context) => CartPage(),
        '/favourite': (context) => FavoritePage(),
        '/search': (context) => SearchPage(),
        '/profile': (context) => profilepage(),
      },
    );
  }
}
