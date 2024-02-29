import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                top: 67,
                child: Container(
                  width: 360,
                  height: 100,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 14,
                        top: 0,
                        child: Text(
                          'Deliver to',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF383838),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          width: 360,
                          height: 77,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 360,
                                  height: 77,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 14,
                                top: 17,
                                child: Container(
                                  width: 258,
                                  height: 43,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 21,
                                        child: SizedBox(
                                          width: 258,
                                          child: Text(
                                            'Number 2, Soi 6-2-4, Phetkasem 69 road, Nong Khang Phlu, Nongkhaem 10160',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w300,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Text(
                                          'Miss Pattaraporn Tongmahavised 081 222 3334',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
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
                                left: 319,
                                top: 31,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/arrow.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
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
              ),
              Positioned(
                left: -2,
                top: 564,
                child: Container(
                  width: 360.50,
                  height: 208,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 26.91,
                        child: Container(
                          width: 360,
                          height: 181.09,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 2,
                        top: 0,
                        child: SizedBox(
                          width: 170,
                          height: 17,
                          child: Text(
                            'Other Payment Method',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF383838),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        top: 50,
                        child: Container(
                          width: 127,
                          height: 21,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 4,
                                child: Container(
                                  width: 13,
                                  height: 13,
                                  decoration: ShapeDecoration(
                                    color: Colors.black.withOpacity(0),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFC0C0C0)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 27,
                                top: 13,
                                child: Text(
                                  'Promotions available',
                                  style: TextStyle(
                                    color: Color(0xFF383838),
                                    fontSize: 7,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 0,
                                child: Text(
                                  'Credit Card / Debit card',
                                  style: TextStyle(
                                    color: Color(0xFF383838),
                                    fontSize: 9,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        top: 51,
                        child: Container(
                          width: 320,
                          height: 80,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 62,
                                child: Container(
                                  width: 13,
                                  height: 13,
                                  decoration: ShapeDecoration(
                                    color: Colors.black.withOpacity(0),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFC0C0C0)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 27,
                                top: 72,
                                child: Text(
                                  'Using a reference code',
                                  style: TextStyle(
                                    color: Color(0xFF383838),
                                    fontSize: 7,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 27,
                                top: 59,
                                child: Text(
                                  'Bank Transfer / Counter Services',
                                  style: TextStyle(
                                    color: Color(0xFF383838),
                                    fontSize: 9,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 305,
                                top: 60,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/15x15"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 303,
                                top: 0,
                                child: Container(
                                  width: 17,
                                  height: 17,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/17x17"),
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
                        left: 17,
                        top: 167,
                        child: Container(
                          width: 319,
                          height: 21,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 4,
                                child: Container(
                                  width: 13,
                                  height: 13,
                                  decoration: ShapeDecoration(
                                    color: Colors.black.withOpacity(0),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFC0C0C0)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 28,
                                top: 0,
                                child: Text(
                                  'Pay On Delivery',
                                  style: TextStyle(
                                    color: Color(0xFF383838),
                                    fontSize: 9,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 28,
                                top: 13,
                                child: Text(
                                  'Messenger will contact you for a confirmation',
                                  style: TextStyle(
                                    color: Color(0xFF383838),
                                    fontSize: 7,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 304,
                                top: 5,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/15x15"),
                                      fit: BoxFit.fill,
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
              ),
              Positioned(
                left: -1,
                top: 401,
                child: Container(
                  width: 361,
                  height: 149,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15,
                        top: 0,
                        child: SizedBox(
                          width: 170,
                          height: 17,
                          child: Text(
                            'Saved Payment Method',
                            style: TextStyle(
                              color: Color(0xFF383838),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1,
                        top: 23,
                        child: Container(
                          width: 360,
                          height: 126,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 49,
                        top: 64,
                        child: Container(
                          width: 289,
                          height: 25,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFD9D9D9)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 49,
                        top: 123,
                        child: Text(
                          'View Credit Card Promotion',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 60,
                        top: 71,
                        child: Text(
                          'Enter CVV',
                          style: TextStyle(
                            color: Color(0xFFC5C3C3),
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 49,
                        top: 36,
                        child: Text(
                          '1234 56** **** 3456',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 108,
                        child: Container(
                          width: 360,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFD9D9D9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 19,
                        top: 35,
                        child: Container(
                          width: 13,
                          height: 13,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFC0C0C0)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 320,
                        top: 120,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/15x15"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
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
                top: 181,
                child: Container(
                  width: 360,
                  height: 206,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          width: 360,
                          height: 183,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 13,
                        top: 0,
                        child: Text(
                          'Shipment 1 of 1',
                          style: TextStyle(
                            color: Color(0xFF383838),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 13,
                        top: 30,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/70x70"),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 157,
                        child: Container(
                          width: 360,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFD9D9D9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        top: 125,
                        child: Container(
                          width: 13,
                          height: 13,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFC0C0C0)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        top: 174,
                        child: Container(
                          width: 13,
                          height: 13,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFC0C0C0)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 48,
                        top: 136,
                        child: Text(
                          'Order Today, delivers: 21 Lan - 23 Jan',
                          style: TextStyle(
                            color: Color(0xFF383838),
                            fontSize: 7,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 48,
                        top: 185,
                        child: Text(
                          'Order Today, pickup by 18 Jan',
                          style: TextStyle(
                            color: Color(0xFF383838),
                            fontSize: 7,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 173,
                        child: Text(
                          'select store',
                          style: TextStyle(
                            color: Color(0xFF008EAB),
                            fontSize: 7,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 48,
                        top: 122,
                        child: Text(
                          'Home Delivery',
                          style: TextStyle(
                            color: Color(0xFF383838),
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 48,
                        top: 171,
                        child: Text(
                          'Click and collect',
                          style: TextStyle(
                            color: Color(0xFF383838),
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 292,
                        top: 4,
                        child: Text(
                          'View Items',
                          style: TextStyle(
                            color: Color(0xFF008EAB),
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 320,
                        top: 127,
                        child: Text(
                          'FREE',
                          style: TextStyle(
                            color: Color(0xFF383838),
                            fontSize: 7,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 320,
                        top: 174,
                        child: Text(
                          'FREE',
                          style: TextStyle(
                            color: Color(0xFF383838),
                            fontSize: 7,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 108,
                        child: Container(
                          width: 360,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFD9D9D9),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -1,
                top: 0,
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
                          left: 13,
                          top: 25,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/ShoppingCart');
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/arrow.png'),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          )),
                      Positioned(
                        left: 107,
                        top: 24,
                        child: Text(
                          'Secure Checkout',
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
            ],
          ),
        ),
      ],
    ));
  }
}
