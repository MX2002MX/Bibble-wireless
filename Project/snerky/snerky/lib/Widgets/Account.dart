import 'package:flutter/material.dart';

class Account extends StatelessWidget {
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
                            ),
                          )),
                      Positioned(
                        left: 122,
                        top: 24,
                        child: Text(
                          'User Account',
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
                left: 14,
                top: 583,
                child: Container(
                  width: 328,
                  height: 94,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 22,
                        child: Container(
                          width: 328,
                          height: 72,
                          decoration: ShapeDecoration(
                            color: Color(0x0C24265F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 61,
                        top: 31.74,
                        child: Container(
                          width: 115,
                          height: 52.18,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 115,
                                  height: 10.92,
                                  child: Text(
                                    'Report a problem',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.06,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 41.26,
                                child: SizedBox(
                                  width: 85,
                                  height: 10.92,
                                  child: Text(
                                    'Add account',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0.06,
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
                        top: 58,
                        child: Container(
                          width: 328,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 68,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/20x20"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 27,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/20x20"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8,
                        top: 0,
                        child: Text(
                          'Actions',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 406,
                child: Container(
                  width: 329,
                  height: 145,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 26,
                        child: Container(
                          width: 329,
                          height: 119,
                          decoration: ShapeDecoration(
                            color: Color(0x0C24265F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 59,
                        top: 37,
                        child: Container(
                          width: 124,
                          height: 93,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'Cart',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 43,
                                child: Text(
                                  'Help & Support',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 81,
                                child: Text(
                                  'Terms and Policies',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 66,
                        child: Container(
                          width: 329,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 105,
                        child: Container(
                          width: 329,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 112,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/22x22"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 69,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/22x22"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 32,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/22x22"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 9,
                        top: 0,
                        child: Text(
                          'Support & About',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 194,
                child: Container(
                  width: 327,
                  height: 183,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 21,
                        child: Container(
                          width: 327,
                          height: 162,
                          decoration: ShapeDecoration(
                            color: Color(0x0C24265F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 32,
                        child: Container(
                          width: 127,
                          height: 141,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 43,
                                top: 6,
                                child: Text(
                                  'Edit profile',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 43,
                                top: 44,
                                child: Text(
                                  'Security',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 43,
                                top: 85,
                                child: Text(
                                  'Notifications',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 43,
                                top: 125,
                                child: Text(
                                  'Privacy',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 40,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/20x20"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  padding: const EdgeInsets.all(3.33),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: double.infinity,
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 1,
                                top: 121,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/20x20"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 1,
                                top: 81,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/20x20"),
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
                        left: 0,
                        top: 62,
                        child: Container(
                          width: 327,
                          height: 81,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 327,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 40,
                                child: Container(
                                  width: 327,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 81,
                                child: Container(
                                  width: 327,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Colors.white,
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
                        left: 7,
                        top: 0,
                        child: Text(
                          'Account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 91,
                top: 149,
                child: Container(
                  width: 177,
                  height: 25,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 102,
                        top: 0,
                        child: Container(
                          width: 75,
                          height: 25,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 3,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/Signin');
                            },
                            child: SizedBox(
                              width: 56,
                              height: 19,
                              child: Text(
                                'Sign in',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            )),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 75,
                          height: 25,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 13,
                          top: 3,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/Login');
                            },
                            child: SizedBox(
                              width: 48,
                              height: 19,
                              child: Text(
                                'Log in',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
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
                        left: 298.95,
                        top: 8.08,
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: ShapeDecoration(
                            color: Color(0xFF383838),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 313.60,
                        top: 10,
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(width: 50, height: 50),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 86.95,
                        top: 10.17,
                        child: Opacity(
                          opacity: 0.40,
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(width: 50, height: 50),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 238.05,
                        top: 10.72,
                        child: Opacity(
                          opacity: 0.40,
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(width: 50, height: 50),
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
                left: 145,
                top: 69,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/70x70"),
                      fit: BoxFit.fill,
                    ),
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
