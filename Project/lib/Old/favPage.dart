import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snerky/detailPage.dart';
import 'detailPage.dart';
import 'navigator.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 2;
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

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 items per row
          crossAxisSpacing: 16.0, // Spacing between columns
          mainAxisSpacing: 16.0, // Spacing between rows
          childAspectRatio: 0.7, // Aspect ratio of each item (adjust as needed)
        ),
        itemCount: favoriteProducts.length,
        itemBuilder: (BuildContext context, int index) {
          // Build the ProductBox for each item
          return ProductBox(
              brand: favoriteProducts[index]['brand'],
              product: favoriteProducts[index]['product'],
              price: favoriteProducts[index]['price'],
              imagePath: favoriteProducts[index]['imagePath'],
              detail: favoriteProducts[index]['detail']);
        },
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
          Positioned(
            top: 8.0,
            right: 8.0,
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
