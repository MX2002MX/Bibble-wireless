import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
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
                          opacity: 0.80,
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
                          opacity: 0.80,
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
                              Navigator.pushNamed(context, '/Account');
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
                        left: 114,
                        top: 24,
                        child: Text(
                          'Create Account',
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
                top: 151,
                child: Container(
                  width: 323,
                  height: 33,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 160,
                child: Text(
                  'Enter a valid email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFC0C0C0),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 14,
                top: 125,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Email Address',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFF008EAB),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Color(0xFF008EAB),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                left: 14,
                top: 227,
                child: Container(
                  width: 323,
                  height: 33,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 201,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Password ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Color(0xFF008EAB),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                left: 14,
                top: 385,
                child: Container(
                  width: 323,
                  height: 33,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 358,
                child: Text(
                  'Birthday',
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
              Positioned(
                left: 14,
                top: 462,
                child: SizedBox(
                  width: 318,
                  child: Text(
                    'By creating an account, you agree to SNERKY’s privacy policy and term to use.',
                    style: TextStyle(
                      color: Color(0xFFC0C0C0),
                      fontSize: 11,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 499,
                child: SizedBox(
                  width: 203,
                  child: Text(
                    'I agree to the SNERKY’s TERMS OF USE and PRIVACY POLICY',
                    style: TextStyle(
                      color: Color(0xFF383838),
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 440,
                child: Text(
                  'Membership Agreement',
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
              Positioned(
                left: 14,
                top: 303,
                child: Container(
                  width: 323,
                  height: 33,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 277,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Postal Code ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Color(0xFF008EAB),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                left: 287,
                top: 125,
                child: Text(
                  'Required *',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF008EAB),
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 302,
                top: 392,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/20x20"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 499,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 564,
                child: Container(
                  width: 322,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 322,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xFF008EAB),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 91,
                        top: 14,
                        child: Text(
                          'Create Account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
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
                top: 68,
                child: SizedBox(
                  width: 255,
                  child: Text(
                    'You will recieve the confirmation mail to your email address associated with account. Please make sure to check your incoming email from us.',
                    style: TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 10,
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
      ],
    ));
  }
}