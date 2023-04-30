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
        // listenFNg (1:594)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group9NiC (1:595)
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
                    // image2FGC (1:600)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.49*fem, 0*fem),
                    width: 47.51*fem,
                    height: 50*fem,
                    child: Image.asset(
                      'assets/page-1/images/image-2-haQ.png',
                    ),
                  ),
                  Container(
                    // autogroupfvnta3a (7VJHC5P9ux9ndraWs5fVnT)
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
                          // seachhere4jS (1:599)
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
                          // vectormdr (1:598)
                          width: 27.98*fem,
                          height: 28*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-8LG.png',
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
              // autogroupgv59Jdn (7VJGqW96pcCB5t6Rqggv59)
              padding: EdgeInsets.fromLTRB(21*fem, 37*fem, 18*fem, 42*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // image2qNp (1:601)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 29.13*fem),
                    width: 293*fem,
                    height: 415.87*fem,
                    child: Image.asset(
                      'assets/page-1/images/image-2-DLC.png',
                    ),
                  ),
                  Container(
                    // thinkoutsidetheboxMc4 (1:602)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 25*fem),
                    child: Text(
                      'Think Outside The Box',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 31.8352642059*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff315ed2),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupjkexf6x (7VJG8MezdvGwyw8FntjkeX)
                    margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 2*fem, 2*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffd1d1d1),
                      borderRadius: BorderRadius.circular(500*fem),
                    ),
                    child: Align(
                      // rectangle39P2x (1:604)
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 157*fem,
                        height: 5*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(500*fem),
                            color: Color(0xff777777),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupofmvJQp (7VJGGGbUbWioM9vkVaofmV)
                    margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 22*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // dhz (1:607)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 279*fem, 0*fem),
                          child: Text(
                            '23:55',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12.2032423019*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff315ed2),
                            ),
                          ),
                        ),
                        Container(
                          // wig (1:608)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          child: Text(
                            '23:55',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12.2032423019*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffd1d1d1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogrouphay9UCp (7VJGRMAgXXnD29xp7thAy9)
                    margin: EdgeInsets.fromLTRB(141*fem, 0*fem, 143*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(19*fem, 19*fem, 19*fem, 19*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff315ed2)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(35*fem),
                    ),
                    child: Center(
                      // polygon1NZ6 (1:606)
                      child: SizedBox(
                        width: 32*fem,
                        height: 32*fem,
                        child: Image.asset(
                          'assets/page-1/images/polygon-1.png',
                          width: 32*fem,
                          height: 32*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupft8t6EC (7VJGZqvXULXqYGP6HPft8T)
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
                    // vectorAzk (1:613)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 77*fem, 0*fem),
                    width: 27*fem,
                    height: 27*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-od2.png',
                      width: 27*fem,
                      height: 27*fem,
                    ),
                  ),
                  Container(
                    // vectoruBe (1:610)
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
                          'assets/page-1/images/vector-Ei4.png',
                          width: 24*fem,
                          height: 27*fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // vectorCwS (1:612)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 67.99*fem, 0*fem),
                    width: 37.01*fem,
                    height: 27*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-m7n.png',
                      width: 37.01*fem,
                      height: 27*fem,
                    ),
                  ),
                  Container(
                    // vectorwPE (1:611)
                    width: 27*fem,
                    height: 27*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-sN8.png',
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