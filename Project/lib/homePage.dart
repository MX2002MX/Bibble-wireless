import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'navigator.dart';
import 'package:snerky/search.dart';
import 'detailPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> favoriteProducts = [
    {
      'brand': 'Addidas',
      'product': 'Samba OG',
      'price': '3,800฿',
      'imagePath': 'assets/images/Samba_OG.png',
      'detail':
          "Get the look of the 1950s original with the men's Samba OG trainers from adidas Originals. \n White leather and suede upper protects the foot for premium support."
    },
    {
      'brand': 'New Balance',
      'product': 'M2002REK',
      'price': '5,400฿',
      'imagePath': 'assets/images/M2002REK.png',
      'detail': "A premium upper construction offers an elevated take on a classic look."
    },
    {
      'brand': 'Puma',
      'product': 'Palermo',
      'price': '3,500฿',
      'imagePath': 'assets/images/Palermo.png',
      'detail':
          "A terrace legend from our archives returns: The Palermo. The silhouette debuted back in the early '80s, where it quickly became a staple among the terrace crowds in British football stadiums. Now, we’ve brought it back for the fans. Like the original, the Palermo is complete with its signature tag at the upper, a T-toe construction, and, of course, the classic gum sole. This version has a suede base and leather Formstrip with foil-printed PUMA branding."
    },
    // Add more products as needed
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/Snerky.png')),
            SizedBox(height: 30),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), border: Border.all(color: Color.fromARGB(255, 39, 39, 39))),
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            const Text(
                              "20% Discount",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "on your first purchase",
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(height: 10),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 56, 137, 161),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  "Shop Now",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Image(
                        image: AssetImage('assets/images/Samba_OG.png'),
                        width: 120,
                        height: 120,
                      ),
                      Align(
                        alignment: Alignment.center,
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Explore More ->",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: axisDirectionToAxis(AxisDirection.right),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductBox(
                        brand: favoriteProducts[0]['brand'],
                        product: favoriteProducts[0]['product'],
                        price: favoriteProducts[0]['price'],
                        imagePath: favoriteProducts[0]['imagePath'],
                        detail: favoriteProducts[0]['detail']),
                    SizedBox(width: 10),
                    ProductBox(
                        brand: favoriteProducts[1]['brand'],
                        product: favoriteProducts[1]['product'],
                        price: favoriteProducts[1]['price'],
                        imagePath: favoriteProducts[1]['imagePath'],
                        detail: favoriteProducts[1]['detail']),
                    SizedBox(width: 10),
                    ProductBox(
                        brand: favoriteProducts[2]['brand'],
                        product: favoriteProducts[2]['product'],
                        price: favoriteProducts[2]['price'],
                        imagePath: favoriteProducts[2]['imagePath'],
                        detail: favoriteProducts[2]['detail']),
                  ],
                ),
              ),
            )
          ],
        ),
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
