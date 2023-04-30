import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // downloadsYRE (1:545)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group9siQ (1:552)
              padding: EdgeInsets.fromLTRB(28*fem, 13*fem, 24*fem, 14*fem),
              width: double.infinity,
              height: 77*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f315ed2),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 5*fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // image2kGQ (1:557)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.49*fem, 0*fem),
                    width: 47.51*fem,
                    height: 50*fem,
                    child: Image.asset(
                      'assets/page-1/images/image-2-pPi.png',
                    ),
                  ),
                  Container(
                    // autogroupmcfdfeG (7VJERjpeebrhV7uxkfMCfd)
                    padding: EdgeInsets.fromLTRB(52*fem, 11*fem, 23.02*fem, 11*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffd1d1d1)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(500*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // seachherekfi (1:556)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 50*fem, 0*fem),
                          child: Text(
                            'Seach Here',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffd1d1d1),
                            ),
                          ),
                        ),
                        Container(
                          // vectorFsN (1:555)
                          width: 27.98*fem,
                          height: 28*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-2C8.png',
                            width: 27.98*fem,
                            height: 28*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup7bmmncQ (7VJAYrHNTcmZWRf4BZ7bMm)
              padding: EdgeInsets.fromLTRB(11*fem, 10*fem, 10*fem, 343*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group13WoJ (1:560)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                    padding: EdgeInsets.fromLTRB(19*fem, 20*fem, 24*fem, 17.42*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff777777)),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // image2onQ (1:562)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                          width: 92*fem,
                          height: 130.58*fem,
                          child: Image.asset(
                            'assets/page-1/images/image-2-DjN.png',
                          ),
                        ),
                        Container(
                          // autogroupbpvrwNp (7VJAqB9W5ZMMoLw18CbpVR)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3.58*fem),
                          width: 222*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group12sGU (1:563)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.32*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // thinkoutsidetheboxQGQ (1:564)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.84*fem),
                                      child: Text(
                                        'Think Outside The Box',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20.1037635803*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff315ed2),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // artlifegoals6uv (1:565)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.84*fem),
                                      child: Text(
                                        'Art | Life | Goals',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20.1037635803*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff777777),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // autogroupmqc3opL (7VJBVuXy2wRnhKVDQDMQc3)
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // xSL (1:566)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.84*fem, 0*fem),
                                            child: Text(
                                              '4.1',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 20.1037635803*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125*ffem/fem,
                                                color: Color(0xff777777),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // vectorFwE (1:567)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.08*fem, 1.13*fem),
                                            width: 19.77*fem,
                                            height: 19.89*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-V7E.png',
                                              width: 19.77*fem,
                                              height: 19.89*fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorysE (1:568)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.08*fem, 1.13*fem),
                                            width: 19.77*fem,
                                            height: 19.89*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-iBS.png',
                                              width: 19.77*fem,
                                              height: 19.89*fem,
                                            ),
                                          ),
                                          Container(
                                            // vectoruVz (1:569)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.08*fem, 1.13*fem),
                                            width: 19.77*fem,
                                            height: 19.89*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-6tG.png',
                                              width: 19.77*fem,
                                              height: 19.89*fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorF44 (1:570)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.13*fem),
                                            width: 19.77*fem,
                                            height: 19.89*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-LEk.png',
                                              width: 19.77*fem,
                                              height: 19.89*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupq7jrmYC (7VJAzqY4zniYdEarDKQ7jR)
                                margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 10.21*fem, 0*fem),
                                width: double.infinity,
                                height: 28*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupesfu76G (7VJB8R9mpYhfcoc3DqESFu)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.21*fem, 0*fem),
                                      width: 95.79*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xff315ed2),
                                        borderRadius: BorderRadius.circular(29.4736843109*fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Read',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 17.6842098236*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // autogrouprad1yeG (7VJBDfW2hTTfzpA6P7Rad1)
                                      width: 95.79*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xff315ed2),
                                        borderRadius: BorderRadius.circular(29.4736843109*fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Listen',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 17.6842098236*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group23fGC (1:572)
                    width: double.infinity,
                    height: 168*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Container(
                      // group13p96 (1:573)
                      padding: EdgeInsets.fromLTRB(19*fem, 17*fem, 24*fem, 17*fem),
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff777777)),
                        borderRadius: BorderRadius.circular(20*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // image2ikG (1:591)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 3.42*fem),
                            width: 92*fem,
                            height: 130.58*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xffffffff)),
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/image-2-bg.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // autogrouphafm1zG (7VJCYnxBUP9oR7VDExhAFm)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                            width: 222*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group12Kk4 (1:575)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18.32*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // thinkoutsidetheboxeGY (1:576)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.84*fem),
                                        child: Text(
                                          'Think Outside The Box',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20.1037635803*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff315ed2),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // artlifegoalskKa (1:577)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.84*fem),
                                        child: Text(
                                          'Art | Life | Goals',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20.1037635803*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff777777),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogroupbsw7TDz (7VJDPgiP3kHWhTNE9MbSW7)
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // zji (1:578)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.84*fem, 0*fem),
                                              child: Text(
                                                '4.1',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 20.1037635803*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2125*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // vector7pL (1:579)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.08*fem, 1.13*fem),
                                              width: 19.77*fem,
                                              height: 19.89*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-jzx.png',
                                                width: 19.77*fem,
                                                height: 19.89*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectorqkL (1:580)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.08*fem, 1.13*fem),
                                              width: 19.77*fem,
                                              height: 19.89*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-URW.png',
                                                width: 19.77*fem,
                                                height: 19.89*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectorksJ (1:581)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.08*fem, 1.13*fem),
                                              width: 19.77*fem,
                                              height: 19.89*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-ZuA.png',
                                                width: 19.77*fem,
                                                height: 19.89*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectorgkx (1:582)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.13*fem),
                                              width: 19.77*fem,
                                              height: 19.89*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-UrU.png',
                                                width: 19.77*fem,
                                                height: 19.89*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupsakv1YL (7VJCrCcqnHjURQ3uBgSaKV)
                                  margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 10.21*fem, 0*fem),
                                  width: double.infinity,
                                  height: 28*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupwvst98k (7VJCz7ZKjtBKncrPtNWVST)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.21*fem, 0*fem),
                                        width: 95.79*fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xff315ed2),
                                          borderRadius: BorderRadius.circular(29.4736843109*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Read',
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 17.6842098236*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogroupps6oDuJ (7VJD5XZyBiAhMTJ6tjpS6o)
                                        width: 95.79*fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xff315ed2),
                                          borderRadius: BorderRadius.circular(29.4736843109*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Listen',
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 17.6842098236*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup8y3zKhS (7VJ9csqJaG7D2u7dxy8y3Z)
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
              width: double.infinity,
              height: 77*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f315ed2),
                    offset: Offset(0*fem, -4*fem),
                    blurRadius: 5*fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouprxpbzoa (7VJAGrk1yWeVbAAQw5rxpb)
                    padding: EdgeInsets.fromLTRB(30*fem, 25*fem, 36*fem, 25*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorjFN (1:593)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
                          width: 27*fem,
                          height: 27*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-MQ4.png',
                            width: 27*fem,
                            height: 27*fem,
                          ),
                        ),
                        TextButton(
                          // vectorFjW (1:551)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 24*fem,
                            height: 27*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-g9N.png',
                              width: 24*fem,
                              height: 27*fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupkz1mP52 (7VJ9y2vPFJzQcosbNeKZ1m)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(22*fem, 22*fem, 23*fem, 7*fem),
                    width: 98*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(50*fem),
                        topRight: Radius.circular(50*fem),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorfYL (1:592)
                          margin: EdgeInsets.fromLTRB(0.01*fem, 0*fem, 0*fem, 3*fem),
                          width: 37.01*fem,
                          height: 27*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-rTz.png',
                            width: 37.01*fem,
                            height: 27*fem,
                          ),
                        ),
                        Text(
                          // ebookPjE (1:550)
                          'E-Book',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 14.8148145676*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    // vectorwVr (1:548)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 27*fem,
                      height: 27*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-UQ8.png',
                        width: 27*fem,
                        height: 27*fem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}