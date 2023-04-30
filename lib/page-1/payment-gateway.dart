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
        // paymentgatewayR5J (1:210)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group8MUk (1:211)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 334*fem),
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
                    // image22Kz (1:216)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.49*fem, 0*fem),
                    width: 47.51*fem,
                    height: 50*fem,
                    child: Image.asset(
                      'assets/page-1/images/image-2-jZA.png',
                    ),
                  ),
                  Container(
                    // autogroupaazq9fW (7VHWdSU98MKgAianqgaaZq)
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
                          // seachhereFTe (1:215)
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
                          // vectorxsr (1:214)
                          width: 27.98*fem,
                          height: 28*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-M76.png',
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
              // paymentgatewayhKe (1:222)
              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 332*fem),
              child: Text(
                'Payment Gateway',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 26.8099994659*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff315ed2),
                ),
              ),
            ),
            Container(
              // autogroupincschW (7VHWKs96FXWdyc8T3siNCs)
              padding: EdgeInsets.fromLTRB(30*fem, 25*fem, 36*fem, 25*fem),
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
                    // vectortuv (1:221)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 77*fem, 0*fem),
                    width: 27*fem,
                    height: 27*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-trC.png',
                      width: 27*fem,
                      height: 27*fem,
                    ),
                  ),
                  Container(
                    // vectorcqv (1:218)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 67*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 24*fem,
                        height: 27*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-TBN.png',
                          width: 24*fem,
                          height: 27*fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // vectorhcU (1:220)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 67.99*fem, 0*fem),
                    width: 37.01*fem,
                    height: 27*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-2hE.png',
                      width: 37.01*fem,
                      height: 27*fem,
                    ),
                  ),
                  Container(
                    // vector7RJ (1:219)
                    width: 27*fem,
                    height: 27*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-uqi.png',
                      width: 27*fem,
                      height: 27*fem,
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