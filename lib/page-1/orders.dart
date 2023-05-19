import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/About.dart';
import 'package:myapp/page-1/Contact.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/utils.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  double baseWidth = 393;

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // orders8CG (1:303)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // orderszXJ (1:407)
                  margin:
                      EdgeInsets.fromLTRB(10 * fem, 28 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    'Orders',
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
                  // autogroupqvx5iCQ (7VHeW8Wr4QZcNNZBc4QvX5)
                  padding: EdgeInsets.fromLTRB(
                      10 * fem, 9 * fem, 11 * fem, 28 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group12qH2 (1:329)
                        width: double.infinity,
                        height: 130 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff315ed2)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              // group11kPz (1:331)
                              left: 99 * fem,
                              top: 16 * fem,
                              child: Container(
                                width: 156 * fem,
                                height: 59.72 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // thinkoutsidetheboxfmr (1:332)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 2.86 * fem),
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
                                      // artlifegoalsNgG (1:333)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 2.86 * fem),
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
                                      // autogrouprqh9tPi (7VHgeQH7T4U7cLuxysrQH9)
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // ReY (1:334)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 2.86 * fem, 0 * fem),
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
                                            // vectorYUG (1:335)
                                            margin: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                0 * fem,
                                                5.65 * fem,
                                                1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-TNp.png',
                                              width: 13.82 * fem,
                                              height: 13.91 * fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorG9N (1:336)
                                            margin: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                0 * fem,
                                                5.65 * fem,
                                                1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-y2g.png',
                                              width: 13.82 * fem,
                                              height: 13.91 * fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorC32 (1:337)
                                            margin: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                0 * fem,
                                                5.65 * fem,
                                                1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-Tkc.png',
                                              width: 13.82 * fem,
                                              height: 13.91 * fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorin4 (1:338)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-krc.png',
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
                              // image2evc (1:339)
                              left: 15 * fem,
                              top: 14 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 72 * fem,
                                  height: 102.19 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/image-2-Bw6.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group134De (1:341)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    15 * fem, 14 * fem, 17 * fem, 13.81 * fem),
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
                                      // image2sRz (1:343)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                      width: 72 * fem,
                                      height: 102.19 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/image-2-CXa.png',
                                      ),
                                    ),
                                    Container(
                                      // autogroupywabarC (7VHh5ZDs9eGGo2PVnCYwAb)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          63.81 * fem, 47 * fem, 0 * fem),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // jan2023uda (1:352)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 2 * fem),
                                            child: Text(
                                              '13 Jan 2023',
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
                                            // statusonthewayJvc (1:351)
                                            'Status: On the way',
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
                                      // line1F5A (1:344)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 16.79 * fem, 3.19 * fem),
                                      width: 1.21 * fem,
                                      height: 97.01 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xff315ed2),
                                      ),
                                    ),
                                    Container(
                                      // autogroupprytM8C (7VHhD41NgwdiCBTrsAprYT)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 20 * fem, 0 * fem, 20 * fem),
                                      width: 65 * fem,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // group15feg (1:348)
                                            margin: EdgeInsets.fromLTRB(5 * fem,
                                                0 * fem, 5.09 * fem, 17 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // oF6 (1:349)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      3 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    '599',
                                                    style: SafeGoogleFont(
                                                      'Inter',
                                                      fontSize:
                                                          20.432472229 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height:
                                                          1.2125 * ffem / fem,
                                                      color: Color(0xff315ed2),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // vectorXB6 (1:350)
                                                  width: 10.91 * fem,
                                                  height: 15 * fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-fNp.png',
                                                    width: 10.91 * fem,
                                                    height: 15 * fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group14fYC (1:345)
                                            width: double.infinity,
                                            height: 20 * fem,
                                            decoration: BoxDecoration(
                                              color: Color(0xff315ed2),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20 * fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Invoice',
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
                      SizedBox(
                        height: 10 * fem,
                      ),
                      Container(
                        // group12qH2 (1:329)
                        width: double.infinity,
                        height: 130 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff315ed2)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              // group11kPz (1:331)
                              left: 99 * fem,
                              top: 16 * fem,
                              child: Container(
                                width: 156 * fem,
                                height: 59.72 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // thinkoutsidetheboxfmr (1:332)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 2.86 * fem),
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
                                      // artlifegoalsNgG (1:333)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 2.86 * fem),
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
                                      // autogrouprqh9tPi (7VHgeQH7T4U7cLuxysrQH9)
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // ReY (1:334)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 2.86 * fem, 0 * fem),
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
                                            // vectorYUG (1:335)
                                            margin: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                0 * fem,
                                                5.65 * fem,
                                                1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-TNp.png',
                                              width: 13.82 * fem,
                                              height: 13.91 * fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorG9N (1:336)
                                            margin: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                0 * fem,
                                                5.65 * fem,
                                                1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-y2g.png',
                                              width: 13.82 * fem,
                                              height: 13.91 * fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorC32 (1:337)
                                            margin: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                0 * fem,
                                                5.65 * fem,
                                                1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-Tkc.png',
                                              width: 13.82 * fem,
                                              height: 13.91 * fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorin4 (1:338)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-krc.png',
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
                              // image2evc (1:339)
                              left: 15 * fem,
                              top: 14 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 72 * fem,
                                  height: 102.19 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/image-2-Bw6.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group134De (1:341)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    15 * fem, 14 * fem, 17 * fem, 13.81 * fem),
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
                                      // image2sRz (1:343)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                      width: 72 * fem,
                                      height: 102.19 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/image-2-CXa.png',
                                      ),
                                    ),
                                    Container(
                                      // autogroupywabarC (7VHh5ZDs9eGGo2PVnCYwAb)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          63.81 * fem, 47 * fem, 0 * fem),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // jan2023uda (1:352)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 2 * fem),
                                            child: Text(
                                              '13 Jan 2023',
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
                                            // statusonthewayJvc (1:351)
                                            'Status: On the way',
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
                                      // line1F5A (1:344)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 16.79 * fem, 3.19 * fem),
                                      width: 1.21 * fem,
                                      height: 97.01 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xff315ed2),
                                      ),
                                    ),
                                    Container(
                                      // autogroupprytM8C (7VHhD41NgwdiCBTrsAprYT)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 20 * fem, 0 * fem, 20 * fem),
                                      width: 65 * fem,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // group15feg (1:348)
                                            margin: EdgeInsets.fromLTRB(5 * fem,
                                                0 * fem, 5.09 * fem, 17 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // oF6 (1:349)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      3 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    '599',
                                                    style: SafeGoogleFont(
                                                      'Inter',
                                                      fontSize:
                                                          20.432472229 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height:
                                                          1.2125 * ffem / fem,
                                                      color: Color(0xff315ed2),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // vectorXB6 (1:350)
                                                  width: 10.91 * fem,
                                                  height: 15 * fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-fNp.png',
                                                    width: 10.91 * fem,
                                                    height: 15 * fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group14fYC (1:345)
                                            width: double.infinity,
                                            height: 20 * fem,
                                            decoration: BoxDecoration(
                                              color: Color(0xff315ed2),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20 * fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Invoice',
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
                      SizedBox(
                        height: 10 * fem,
                      ),
                      Container(
                        // group12qH2 (1:329)
                        width: double.infinity,
                        height: 130 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff315ed2)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              // group11kPz (1:331)
                              left: 99 * fem,
                              top: 16 * fem,
                              child: Container(
                                width: 156 * fem,
                                height: 59.72 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // thinkoutsidetheboxfmr (1:332)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 2.86 * fem),
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
                                      // artlifegoalsNgG (1:333)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 2.86 * fem),
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
                                      // autogrouprqh9tPi (7VHgeQH7T4U7cLuxysrQH9)
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // ReY (1:334)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 2.86 * fem, 0 * fem),
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
                                            // vectorYUG (1:335)
                                            margin: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                0 * fem,
                                                5.65 * fem,
                                                1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-TNp.png',
                                              width: 13.82 * fem,
                                              height: 13.91 * fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorG9N (1:336)
                                            margin: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                0 * fem,
                                                5.65 * fem,
                                                1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-y2g.png',
                                              width: 13.82 * fem,
                                              height: 13.91 * fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorC32 (1:337)
                                            margin: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                0 * fem,
                                                5.65 * fem,
                                                1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-Tkc.png',
                                              width: 13.82 * fem,
                                              height: 13.91 * fem,
                                            ),
                                          ),
                                          Container(
                                            // vectorin4 (1:338)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 1.31 * fem),
                                            width: 13.82 * fem,
                                            height: 13.91 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-krc.png',
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
                              // image2evc (1:339)
                              left: 15 * fem,
                              top: 14 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 72 * fem,
                                  height: 102.19 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/image-2-Bw6.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group134De (1:341)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    15 * fem, 14 * fem, 17 * fem, 13.81 * fem),
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
                                      // image2sRz (1:343)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                      width: 72 * fem,
                                      height: 102.19 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/image-2-CXa.png',
                                      ),
                                    ),
                                    Container(
                                      // autogroupywabarC (7VHh5ZDs9eGGo2PVnCYwAb)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          63.81 * fem, 47 * fem, 0 * fem),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // jan2023uda (1:352)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 2 * fem),
                                            child: Text(
                                              '13 Jan 2023',
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
                                            // statusonthewayJvc (1:351)
                                            'Status: On the way',
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
                                      // line1F5A (1:344)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 16.79 * fem, 3.19 * fem),
                                      width: 1.21 * fem,
                                      height: 97.01 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xff315ed2),
                                      ),
                                    ),
                                    Container(
                                      // autogroupprytM8C (7VHhD41NgwdiCBTrsAprYT)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 20 * fem, 0 * fem, 20 * fem),
                                      width: 65 * fem,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // group15feg (1:348)
                                            margin: EdgeInsets.fromLTRB(5 * fem,
                                                0 * fem, 5.09 * fem, 17 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // oF6 (1:349)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      3 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    '599',
                                                    style: SafeGoogleFont(
                                                      'Inter',
                                                      fontSize:
                                                          20.432472229 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height:
                                                          1.2125 * ffem / fem,
                                                      color: Color(0xff315ed2),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // vectorXB6 (1:350)
                                                  width: 10.91 * fem,
                                                  height: 15 * fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-fNp.png',
                                                    width: 10.91 * fem,
                                                    height: 15 * fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group14fYC (1:345)
                                            width: double.infinity,
                                            height: 20 * fem,
                                            decoration: BoxDecoration(
                                              color: Color(0xff315ed2),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20 * fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Invoice',
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff315ED2)),
        // leading: Icon(Icons.menu, color: Color(0xff315ED2)),
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 5.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Image(image: AssetImage('assets/page-1/images/logo.png')),
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.symmetric(vertical: 50),
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Contact();
              }));
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return About();
              }));
            },
          ),
        ],
      )),
      bottomNavigationBar: bottomnavbar(
        active: 'user',
      ),
    );
  }
}
