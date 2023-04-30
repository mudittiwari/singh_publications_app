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
        // group7rqE (1:834)
        padding: EdgeInsets.fromLTRB(28*fem, 13*fem, 24*fem, 14*fem),
        width: double.infinity,
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
              // image2MGC (1:839)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.49*fem, 0*fem),
              width: 47.51*fem,
              height: 50*fem,
              child: Image.asset(
                'assets/page-1/images/image-2-jSx.png',
              ),
            ),
            Container(
              // autogroup3rvmULp (7VJeiTX37h3FPeSXQG3RVM)
              padding: EdgeInsets.fromLTRB(52*fem, 11*fem, 23.02*fem, 11*fem),
              height: 50*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffd1d1d1)),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(500*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // seachheren6c (1:838)
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
                    // vectortfS (1:837)
                    width: 27.98*fem,
                    height: 28*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-V7W.png',
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
          );
  }
}