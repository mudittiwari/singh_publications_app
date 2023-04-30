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
        // logoutLjr (1:664)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup5zydgHv (7VJPZUbyT6eK2qtz9E5ZyD)
              width: double.infinity,
              height: 775*fem,
              child: Stack(
                children: [
                  Positioned(
                    // group10Qji (1:665)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(28*fem, 13*fem, 24*fem, 14*fem),
                      width: 393*fem,
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
                            // image2G1E (1:670)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.49*fem, 0*fem),
                            width: 47.51*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/page-1/images/image-2-Jfr.png',
                            ),
                          ),
                          Container(
                            // autogroupbgrzNpx (7VJQ2dVPxhCrTS4M6cBgRZ)
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
                                  // seachhere5UU (1:669)
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
                                  // vectoraw2 (1:668)
                                  width: 27.98*fem,
                                  height: 28*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-tE4.png',
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
                  ),
                  Positioned(
                    // rectangle34Qv4 (1:671)
                    left: 134*fem,
                    top: 694*fem,
                    child: Align(
                      child: SizedBox(
                        width: 126*fem,
                        height: 36.65*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(33.7607650757*fem),
                            color: Color(0xff315ed2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // logoutheG (1:672)
                    left: 158.0545654297*fem,
                    top: 699.7272949219*fem,
                    child: Align(
                      child: SizedBox(
                        width: 77*fem,
                        height: 25*fem,
                        child: Text(
                          'Log Out',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 20.2564582825*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle26Cb2 (1:673)
                    left: 11*fem,
                    top: 87*fem,
                    child: Align(
                      child: SizedBox(
                        width: 372*fem,
                        height: 53*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(20*fem),
                            border: Border.all(color: Color(0xff777777)),
                            color: Color(0x7fffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // profilesetting7CC (1:674)
                    left: 34*fem,
                    top: 101*fem,
                    child: Align(
                      child: SizedBox(
                        width: 140*fem,
                        height: 25*fem,
                        child: Text(
                          'Profile Setting',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 20.1037635803*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: Color(0xffaaaaaa),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle35QBJ (1:675)
                    left: 11*fem,
                    top: 150*fem,
                    child: Align(
                      child: SizedBox(
                        width: 372*fem,
                        height: 53*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(20*fem),
                            border: Border.all(color: Color(0xff777777)),
                            color: Color(0x7fffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // accountdetailsJnU (1:676)
                    left: 34*fem,
                    top: 164*fem,
                    child: Align(
                      child: SizedBox(
                        width: 157*fem,
                        height: 25*fem,
                        child: Text(
                          'Account Details',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 20.1037635803*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: Color(0xffaaaaaa),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle36c2U (1:677)
                    left: 11*fem,
                    top: 213*fem,
                    child: Align(
                      child: SizedBox(
                        width: 372*fem,
                        height: 53*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(20*fem),
                            border: Border.all(color: Color(0xff777777)),
                            color: Color(0x7fffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // wishlistKha (1:678)
                    left: 34*fem,
                    top: 227*fem,
                    child: Align(
                      child: SizedBox(
                        width: 81*fem,
                        height: 25*fem,
                        child: Text(
                          'Wishlist',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 20.1037635803*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: Color(0xffaaaaaa),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle37SGQ (1:679)
                    left: 11*fem,
                    top: 276*fem,
                    child: Align(
                      child: SizedBox(
                        width: 372*fem,
                        height: 53*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(20*fem),
                            border: Border.all(color: Color(0xff777777)),
                            color: Color(0x7fffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ordersM8U (1:680)
                    left: 34*fem,
                    top: 290*fem,
                    child: Align(
                      child: SizedBox(
                        width: 68*fem,
                        height: 25*fem,
                        child: Text(
                          'Orders',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 20.1037635803*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: Color(0xffaaaaaa),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle42SQp (1:681)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 393*fem,
                        height: 775*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0x7f1e1e1e),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle43A5v (1:682)
                    left: 19*fem,
                    top: 366*fem,
                    child: Align(
                      child: SizedBox(
                        width: 356*fem,
                        height: 120*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(23.5593223572*fem),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group33UsJ (1:683)
                    left: 47*fem,
                    top: 393*fem,
                    child: Container(
                      width: 300*fem,
                      height: 76*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(29.4736843109*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // areyousureyouwanttologout16Y (1:684)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 26*fem),
                            child: Text(
                              'Are you sure you want to LOGOUT?',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 17.5834674835*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: Color(0xff315ed2),
                              ),
                            ),
                          ),
                          Container(
                            // group31iFr (1:685)
                            margin: EdgeInsets.fromLTRB(62*fem, 0*fem, 62*fem, 0*fem),
                            width: double.infinity,
                            height: 28*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(29.4736843109*fem),
                            ),
                            child: Container(
                              // group32FFn (1:686)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(29.4736843109*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupf39dzUG (7VJQRTAhiRmu2Z4k3hF39d)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                                    width: 76*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xff315ed2),
                                      borderRadius: BorderRadius.circular(29.4736843109*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Yes',
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
                                    // autogroupyyoyTck (7VJQWsBMAFmGbPWT44Yyoy)
                                    width: 76*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xff315ed2),
                                      borderRadius: BorderRadius.circular(29.4736843109*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'No',
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouppuewxJc (7VJQhCDUMA3vAaiuXXpUEw)
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
                    // autogroupncvzdvY (7VJR7S25vh5ZpioMAsNcVZ)
                    padding: EdgeInsets.fromLTRB(30*fem, 25*fem, 32.99*fem, 25*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorMrY (1:698)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 77*fem, 0*fem),
                          width: 27*fem,
                          height: 27*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-gbr.png',
                            width: 27*fem,
                            height: 27*fem,
                          ),
                        ),
                        Container(
                          // vector5Gk (1:693)
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
                                'assets/page-1/images/vector-dBv.png',
                                width: 24*fem,
                                height: 27*fem,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // vectory7E (1:697)
                          width: 37.01*fem,
                          height: 27*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-LKJ.png',
                            width: 37.01*fem,
                            height: 27*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupqw8xKB6 (7VJQv2BS3po3YAJ9hKqw8X)
                    padding: EdgeInsets.fromLTRB(25*fem, 17*fem, 26*fem, 7*fem),
                    width: 98*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(50*fem),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vector2LQ (1:695)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          width: 27*fem,
                          height: 27*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-vsA.png',
                            width: 27*fem,
                            height: 27*fem,
                          ),
                        ),
                        Text(
                          // profilexjr (1:696)
                          'Profile',
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}