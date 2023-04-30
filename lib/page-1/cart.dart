// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/utils.dart';

class Bookcomp extends StatefulWidget {
  const Bookcomp({super.key});

  @override
  State<Bookcomp> createState() => _BookcompState();
}

class _BookcompState extends State<Bookcomp> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.95;
    return Container(
      // group12KFN (1:65)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 27 * fem),
      width: double.infinity,
      height: 130 * fem,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff315ed2)),
        borderRadius: BorderRadius.circular(20 * fem),
      ),
      child: Stack(
        children: [
          Positioned(
            // group11QXi (1:67)
            left: 99 * fem,
            top: 16 * fem,
            child: Container(
              width: 156 * fem,
              height: 59.72 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // thinkoutsidetheboxmFn (1:68)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 2.86 * fem),
                    child: Text(
                      'Think Outside The Box',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14.0545444489 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff315ed2),
                      ),
                    ),
                  ),
                  Container(
                    // artlifegoalsWcg (1:69)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 2.86 * fem),
                    child: Text(
                      'Art | Life | Goals',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14.0545444489 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff777777),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupcu6bDGC (7VHFqnGt7ERVhc2muwcu6b)
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // XGt (1:70)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 2.86 * fem, 0 * fem),
                          child: Text(
                            '4.1',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 14.0545444489 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff777777),
                            ),
                          ),
                        ),
                        Container(
                          // vectord52 (1:71)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5.65 * fem, 1.31 * fem),
                          width: 13.82 * fem,
                          height: 13.91 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-N4G.png',
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                          ),
                        ),
                        Container(
                          // vectorj84 (1:72)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5.65 * fem, 1.31 * fem),
                          width: 13.82 * fem,
                          height: 13.91 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-45n.png',
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                          ),
                        ),
                        Container(
                          // vectorSYG (1:73)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5.65 * fem, 1.31 * fem),
                          width: 13.82 * fem,
                          height: 13.91 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-Lek.png',
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                          ),
                        ),
                        Container(
                          // vectorYrC (1:74)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1.31 * fem),
                          width: 13.82 * fem,
                          height: 13.91 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-DjW.png',
                            width: 13.82 * fem,
                            height: 13.91 * fem,
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
            // line15bE (1:75)
            left: 272 * fem,
            top: 15 * fem,
            child: Align(
              child: SizedBox(
                width: 1.21 * fem,
                height: 97.01 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff315ed2),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // group13nkY (1:76)
            left: 0 * fem,
            top: 0 * fem,
            child: Container(
              padding: EdgeInsets.fromLTRB(
                  272 * fem, 15 * fem, 98.79 * fem, 17.99 * fem),
              width: 372 * fem,
              height: 130 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffd1d1d1)),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Center(
                // line1HxC (1:78)
                child: SizedBox(
                  width: double.infinity,
                  height: 97.01 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffd1d1d1),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // group14qTv (1:79)
            left: 290 * fem,
            top: 76 * fem,
            child: Container(
              width: 65 * fem,
              height: 19 * fem,
              decoration: BoxDecoration(
                color: Color(0xff315ed2),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Center(
                child: Text(
                  'Remove',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // group15i1v (1:82)
            left: 295 * fem,
            top: 34 * fem,
            child: Container(
              width: 54.91 * fem,
              height: 25 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // SCp (1:83)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 0 * fem),
                    child: Text(
                      '599',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20.432472229 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff315ed2),
                      ),
                    ),
                  ),
                  Container(
                    // vectorZYL (1:84)
                    width: 10.91 * fem,
                    height: 15 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-3AG.png',
                      width: 10.91 * fem,
                      height: 15 * fem,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            // statusdelivereducC (1:96)
            left: 99 * fem,
            top: 98 * fem,
            child: Align(
              child: SizedBox(
                width: 113 * fem,
                height: 18 * fem,
                child: Text(
                  'Status: Delivered',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 14.0500001907 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff315ed2),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // jan2023bjv (1:97)
            left: 99 * fem,
            top: 78 * fem,
            child: Align(
              child: SizedBox(
                width: 80 * fem,
                height: 18 * fem,
                child: Text(
                  '11 Jan 2023',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 14.0500001907 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff777777),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // image3JPS (1:98)
            left: 16 * fem,
            top: 15 * fem,
            child: Align(
              child: SizedBox(
                width: 72 * fem,
                height: 102.19 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffffffff)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/page-1/images/image-3-bg.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  double baseWidth = 393;

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.95;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // cartjiY (1:9)
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Color(0xffffffff),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupdnsuTeY (7VHCSxmAYtfQg3LKTCdnsu)
                  padding: EdgeInsets.fromLTRB(
                      10 * fem, 27 * fem, 11 * fem, 21 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Bookcomp(),
                      Bookcomp(),
                      Bookcomp(),
                      Container(
                        // group23ykU (1:85)
                        width: double.infinity,
                        height: 130 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group12K3e (1:86)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(272 * fem,
                                    15 * fem, 98.79 * fem, 17.99 * fem),
                                width: 372 * fem,
                                height: 130 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff315ed2)),
                                  borderRadius: BorderRadius.circular(20 * fem),
                                ),
                                child: Center(
                                  // line1c2k (1:88)
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 97.01 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff315ed2),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group13wqi (1:89)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(272 * fem,
                                    15 * fem, 98.79 * fem, 17.99 * fem),
                                width: 372 * fem,
                                height: 130 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff315ed2)),
                                  borderRadius: BorderRadius.circular(20 * fem),
                                ),
                                child: Center(
                                  // line1qRJ (1:91)
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 97.01 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff315ed2),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group15PBv (1:92)
                              left: 79 * fem,
                              top: 15 * fem,
                              child: Container(
                                width: 254 * fem,
                                height: 65 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // iEC (1:93)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                      child: Text(
                                        '1797',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 32.7460823059 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff315ed2),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // vectorReQ (1:95)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          8 * fem, 130.52 * fem, 0 * fem),
                                      width: 17.48 * fem,
                                      height: 24.04 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-ktG.png',
                                        width: 17.48 * fem,
                                        height: 24.04 * fem,
                                      ),
                                    ),
                                    Container(
                                      // 9aQ (1:94)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 25 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        '3',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 32.7460823059 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff315ed2),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // line15bE (1:75)
                              left: 272 * fem,
                              top: 15 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 1.21 * fem,
                                  height: 97.01 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff315ed2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // itemsGQ8 (1:99)
                              left: 305 * fem,
                              top: 75 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34 * fem,
                                  height: 15 * fem,
                                  child: Text(
                                    'Items',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12.2032423019 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff315ed2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle38NTA (1:100)
                              left: 65 * fem,
                              top: 72 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 126 * fem,
                                  height: 36.65 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          33.7607650757 * fem),
                                      color: Color(0xff315ed2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // buynowHKE (1:101)
                              left: 85 * fem,
                              top: 77 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 86 * fem,
                                  height: 25 * fem,
                                  child: Text(
                                    'Buy Now',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 20.2564582825 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
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
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 5.0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8),
          child: Image.asset(
            'assets/page-1/images/logo.png',
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Search Here',
                        contentPadding:
                            EdgeInsets.only(bottom: 0.0, left: 16, right: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: Color(0xff315ED2),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomnavbar(
        active: 'cart',
      ),
    );
  }
}
