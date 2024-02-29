import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
                left: 34,
                top: 33,
                child: Container(
                  width: 303,
                  height: 132,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage("https://via.placeholder.com/303x132"),
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
                left: 56,
                top: 271,
                child: Container(
                  width: 272.28,
                  height: 334,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 97.91,
                        child: Container(
                          width: 272.28,
                          height: 40.40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 248.28,
                                top: 0,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 248.28,
                                  height: 40.40,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 60,
                                top: 13.09,
                                child: SizedBox(
                                  width: 119,
                                  height: 18,
                                  child: Text(
                                    'USERNAME',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w300,
                                      height: 0.10,
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
                        top: 170.62,
                        child: Container(
                          width: 248.28,
                          height: 40.40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 248.28,
                                  height: 40.40,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 60,
                                top: 11.38,
                                child: SizedBox(
                                  width: 119,
                                  height: 18,
                                  child: Text(
                                    'PASSWORD',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w300,
                                      height: 0.10,
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
                        top: 243.33,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: Container(
                              width: 248.28,
                              height: 40.40,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 248.28,
                                      height: 40.40,
                                      decoration: ShapeDecoration(
                                        color: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x4C000000),
                                            blurRadius: 4,
                                            offset: Offset(0, 4),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 91.86,
                                    top: 11.67,
                                    child: SizedBox(
                                      width: 63,
                                      height: 18,
                                      child: Text(
                                        'LOGIN',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          height: 0.08,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Positioned(
                        left: 2.86,
                        top: 316,
                        child: SizedBox(
                          width: 242,
                          height: 18,
                          child: Text(
                            'Forgot password?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 0,
                        child: SizedBox(
                          width: 184,
                          height: 18,
                          child: Text(
                            'LOGIN',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              height: 0.01,
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
  }
}
