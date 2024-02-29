import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
    body : StreamBuilder(
    stream :
    FirebaseFirestore.instance.collection("Snerky").snapshots(),
    builder : (context , snapshot) {
    var index = 0; // Set your desired index
    var Nike = snapshot.data?.docs[index]["Nike"];
    var NikeAir = snapshot.data?.docs[index]["NikeAir"];
    var Converse = snapshot.data?.docs[index]["Converse"];
    var Adidas = snapshot.data?.docs[index]["Adidas"];

    return SingleChildScrollView(
        child: Wrap(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color.fromARGB(255, 216, 255, 255)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 730,
                child: Container(
                  width: 360,
                  height: 70,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Color(0xFF383838),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFFFFFFF),
                        blurRadius: 12,
                        offset: Offset(-2, -5),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 153,
                        top: 8.08,
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: ShapeDecoration(
                            color: Color(0xFF383838),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x1E000000),
                                blurRadius: 3,
                                offset: Offset(1, 3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/fav.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 86.95,
                        top: 9.72,
                        child: Opacity(
                          opacity: 0.80,
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/search.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23.83,
                        top: 23.45,
                        child: Opacity(
                          opacity: 0.80,
                          child: Container(
                            width: 20.89, 
                                  height: 22,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/home.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),),
                        ),
                      ),
                      Positioned(
                        left: 238.05,
                        top: 10.28,
                        child: Opacity(
                          opacity: 0.80,
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                  width: 50, 
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/cart.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),),
                                  
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 313.60,
                        top: 10.55,
                        child: Opacity(
                          opacity: 0.80,
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                  width: 50, 
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/user.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: -11,
                child: Container(
                  width: 360,
                  height: 58,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 58,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 4,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 25,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/arrow.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 127,
                        top: 24,
                        child: Text(
                          'Shopping ba',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF383838),
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -4,
                top: -11,
                child: Container(
                  width: 360,
                  height: 58,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 58,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 4,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 25,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/arrow.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )),
                      ),
                      Positioned(
                        left: 129,
                        top: 24,
                        child: Text(
                          'Favorites ✨ ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF383838),
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 88,
                child: Container(
                  width: 160,
                  height: 190,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 127,
                        top: 13,
                        child: Container(
                          width: 19,
                          height: 19,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/love.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 40,
                        child: Container(
                          width: 132,
                          height: 51,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/Adidas.png'),
                              fit: BoxFit.fill,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 109,
                        child: SizedBox(
                          width: 58,
                          height: 12,
                          child: Text(
                            'Adidas',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 130,
                        child: Text(
                          'SAMBA OG SHOES\nCloud White ',
                          style: TextStyle(
                            color: Color(0xFF7C7A7A),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 164,
                        child: SizedBox(
                          width: 69,
                          height: 14,
                          child: Text(
                            '฿ $Adidas',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 187,
                top: 88,
                child: Container(
                  width: 169,
                  height: 190,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 127,
                        top: 13,
                        child: Container(
                          width: 19,
                          height: 19,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/love.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 40,
                        child: Container(
                          width: 129,
                          height: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/Nike.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 109,
                        child: SizedBox(
                          width: 58,
                          height: 12,
                          child: Text(
                            'Nike',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 130,
                        child: SizedBox(
                          width: 150,
                          child: Text(
                            'Air Force 1 Shadow \n Beige Pale Ivory',
                            style: TextStyle(
                              color: Color(0xFF7C7A7A),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 164,
                        child: SizedBox(
                          width: 69,
                          height: 14,
                          child: Text(
                            '฿ $Nike',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 294,
                child: Container(
                  width: 160,
                  height: 190,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 2,
                        child: Container(
                          width: 140,
                          height: 95,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/Converse.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 127,
                        top: 13,
                        child: Container(
                          width: 19,
                          height: 19,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/love.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 109,
                        child: SizedBox(
                          width: 98,
                          height: 12,
                          child: Text(
                            'Converse',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 130,
                        child: SizedBox(
                          width: 124,
                          child: Text(
                            'Run Star Hike Three\n Color Unisex',
                            style: TextStyle(
                              color: Color(0xFF7C7A7A),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 164,
                        child: SizedBox(
                          width: 69,
                          height: 14,
                          child: Text(
                            '฿ $Converse',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 184,
                top: 294,
                child: Container(
                  width: 172,
                  height: 190,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        top: 35,
                        child: Container(
                          width: 129,
                          height: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/NikeAir.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 127,
                        top: 13,
                        child: Container(
                          width: 19,
                          height: 19,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/love.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 109,
                        child: SizedBox(
                          width: 98,
                          height: 12,
                          child: Text(
                            'NikeAir',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 130,
                        child: SizedBox(
                          width: 153,
                          child: Text(
                            'Air Force 1 Jester XX \nBlack Sonic Yellow ...',
                            style: TextStyle(
                              color: Color(0xFF7C7A7A),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 164,
                        child: SizedBox(
                          width: 69,
                          height: 14,
                          child: Text(
                            '฿ $NikeAir',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
    }));
}}
