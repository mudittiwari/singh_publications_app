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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        // group12oYC (1:243)
        width: double.infinity,
        height: 130 * fem,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff315ed2)),
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // group118qN (1:245)
              left: 99 * fem,
              top: 16 * fem,
              child: Container(
                width: 156 * fem,
                height: 59.72 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // thinkoutsidetheboxFQC (1:246)
                      'Think Outside The Box',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14.0545444489 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff315ed2),
                      ),
                    ),
                    SizedBox(
                      height: 2.86 * fem,
                    ),
                    Text(
                      // artlifegoalsAn4 (1:247)
                      'Art | Life | Goals',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14.0545444489 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff777777),
                      ),
                    ),
                    SizedBox(
                      height: 2.86 * fem,
                    ),
                    Container(
                      // autogroupwm1mtCG (7VHZac3wHMbWT88kxqWm1M)
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // Rxt (1:248)
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
                            // vectorxT2 (1:249)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 5.65 * fem, 1.31 * fem),
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-iTz.png',
                              width: 13.82 * fem,
                              height: 13.91 * fem,
                            ),
                          ),
                          Container(
                            // vector5Xe (1:250)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 5.65 * fem, 1.31 * fem),
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-unp.png',
                              width: 13.82 * fem,
                              height: 13.91 * fem,
                            ),
                          ),
                          Container(
                            // vectoroTe (1:251)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 5.65 * fem, 1.31 * fem),
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-kHv.png',
                              width: 13.82 * fem,
                              height: 13.91 * fem,
                            ),
                          ),
                          Container(
                            // vectorvoA (1:252)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 1.31 * fem),
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-fHJ.png',
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
              // group13a72 (1:254)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    15 * fem, 8 * fem, 17 * fem, 6.29 * fem),
                width: 372 * fem,
                height: 130 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff315ed2)),
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // image24Xz (1:256)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 12 * fem, 0 * fem),
                      width: 72 * fem,
                      height: 115.71 * fem,
                      child: Image.asset(
                        'assets/page-1/images/image-2-pSC.png',
                      ),
                    ),
                    Container(
                      // autogroupgv5mbH2 (7VHa2ReFFcK8P7Au9WgV5m)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 62.29 * fem, 60 * fem, 0 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // jan2023j8L (1:265)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2 * fem),
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
                          Text(
                            // statusdeliveredqSG (1:264)
                            'Status: Delivered',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 14.0500001907 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff315ed2),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // line1map (1:257)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 16.79 * fem, 4.71 * fem),
                      width: 1.21 * fem,
                      height: 97.01 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff315ed2),
                      ),
                    ),
                    Container(
                      // autogroupscvygxg (7VHaAWF7n7zLw9s3hHsCVy)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 26 * fem, 0 * fem, 28.71 * fem),
                      width: 65 * fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group15R9a (1:261)
                            margin: EdgeInsets.fromLTRB(
                                5 * fem, 0 * fem, 5.09 * fem, 17 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // MZ2 (1:262)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 3 * fem, 0 * fem),
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
                                  // vectorgbJ (1:263)
                                  width: 10.91 * fem,
                                  height: 15 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-paL.png',
                                    width: 10.91 * fem,
                                    height: 15 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group14DLL (1:258)
                            width: double.infinity,
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
    );
  }
}

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
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
            // wishlistKwE (1:241)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Text(
                    // wishlistCXA (1:297)
                    'Wishlist',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 26.8050193787 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff315ed2),
                    ),
                  ),
                ),
                Container(
                  // autogroupkbyw8vc (7VHZDceumiZUw5vYKikBYw)
                  padding: EdgeInsets.fromLTRB(
                      10 * fem, 9 * fem, 11 * fem, 30 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Bookcomp(),
                      Bookcomp(),
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
        active: 'wishlist',
      ),
    );
  }
}
