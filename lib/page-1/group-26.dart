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
        // group26tSU (1:840)
        width: double.infinity,
        height: 81*fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle25RSQ (1:841)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 77*fem,
                  child: Container(
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
                  ),
                ),
              ),
            ),
            Positioned(
              // vector7KE (1:842)
              left: 330*fem,
              top: 29*fem,
              child: Align(
                child: SizedBox(
                  width: 27*fem,
                  height: 27*fem,
                  child: Image.asset(
                    'assets/page-1/images/vector-riL.png',
                    width: 27*fem,
                    height: 27*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle25dHa (1:843)
              left: 92*fem,
              top: 4*fem,
              child: Align(
                child: SizedBox(
                  width: 98*fem,
                  height: 77*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xff315ed2),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(50*fem),
                        topRight: Radius.circular(50*fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // vectorKw6 (1:844)
              left: 128*fem,
              top: 22*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 27*fem,
                  child: Image.asset(
                    'assets/page-1/images/vector-eUp.png',
                    width: 24*fem,
                    height: 27*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // homeFpk (1:845)
              left: 119*fem,
              top: 56*fem,
              child: Align(
                child: SizedBox(
                  width: 43*fem,
                  height: 18*fem,
                  child: Text(
                    'Home',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 14.8148145676*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}