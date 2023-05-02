import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/utils.dart';

class Product extends StatefulWidget {
  String product;
  Product({super.key, required this.product});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  double baseWidth = 393;

  @override
  Widget build(BuildContext context) {
    var product = json.decode(widget.product);
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        child: Container(
          // productpageEeU (1:487)
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupoms3UKr (7VJ6Noa1p6woJgfwSMomS3)
                padding:
                    EdgeInsets.fromLTRB(11 * fem, 28 * fem, 10 * fem, 19 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // image1o7E (1:488)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 26.81 * fem),
                      width: 196 * fem,
                      height: 278.19 * fem,
                      child: Image.asset(
                        'assets/page-1/images/image-1.png',
                      ),
                    ),
                    Container(
                      // autogroupacdhiV6 (7VJ369YhFiiEBfvdHtACDH)
                      margin: EdgeInsets.fromLTRB(
                          13 * fem, 0 * fem, 18 * fem, 10 * fem),
                      width: double.infinity,
                      height: 613 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // group2RPW (1:489)
                            left: 294 * fem,
                            top: 42.9088134766 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 43.14 * fem,
                                height: 43.14 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/group-2-vV6.png',
                                  width: 43.14 * fem,
                                  height: 43.14 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle40Wvk (1:494)
                            left: 187 * fem,
                            top: 120 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 150.15 * fem,
                                height: 38.88 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        35.9210548401 * fem),
                                    color: Color(0xff315ed2),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // buynow1cc (1:495)
                            left: 216 * fem,
                            top: 127 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 92 * fem,
                                height: 27 * fem,
                                child: Text(
                                  'Buy Now',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 21.5526294708 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle41iG8 (1:496)
                            left: 9 * fem,
                            top: 120 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 150.15 * fem,
                                height: 38.88 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        35.9210548401 * fem),
                                    color: Color(0xff315ed2),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // addtocart1m2 (1:497)
                            left: 23.7468261719 * fem,
                            top: 126.7028808594 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 120 * fem,
                                height: 27 * fem,
                                child: Text(
                                  'Add to Cart',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 21.5526294708 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // loremipsumdolorsitametconsecte (1:498)
                            left: 0 * fem,
                            top: 200.66796875 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 341 * fem,
                                height: 146 * fem,
                                child: Text(
                                  json.decode(widget.product)['description'],
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // group30sAx (1:499)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Container(
                              width: 272 * fem,
                              height: 613 * fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogroup3swwP9J (7VJ3fP6KUpBbvQ6Jdz3SWw)
                                    margin: EdgeInsets.fromLTRB(
                                        4 * fem, 0 * fem, 0 * fem, 4 * fem),
                                    width: 268 * fem,
                                    height: 50 * fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // thinkoutsidethebox7b6 (1:500)
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 268 * fem,
                                              height: 30 * fem,
                                              child: Text(
                                                json.decode(
                                                    widget.product)['title'],
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize:
                                                      24.2172622681 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2125 * ffem / fem,
                                                  color: Color(0xff315ed2),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // paperbacknhE (1:523)
                                          left: 0 * fem,
                                          top: 29 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 91 * fem,
                                              height: 21 * fem,
                                              child: Text(
                                                json.decode(
                                                    widget.product)['category'],
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize:
                                                      17.2593173981 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2125 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // artlifegoalstVN (1:504)
                                    margin: EdgeInsets.fromLTRB(
                                        4 * fem, 0 * fem, 0 * fem, 5 * fem),
                                    child: Text(
                                      json.decode(widget.product)['subtitle'],
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 17.2600002289 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff777777),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroupvwibbua (7VJ3pTfXQqF1bQ8NGHvwib)
                                    margin: EdgeInsets.fromLTRB(
                                        4 * fem, 0 * fem, 0 * fem, 79 * fem),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // Kqa (1:505)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 5 * fem, 0 * fem),
                                          child: Text(
                                            json
                                                .decode(
                                                    widget.product)['rating']
                                                .toString(),
                                            style: SafeGoogleFont(
                                              'Inter',
                                              fontSize: 17.2600002289 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125 * ffem / fem,
                                              color: Color(0xff777777),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // vectorqov (1:506)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0.33 * fem, 7.04 * fem, 0 * fem),
                                          width: 17.22 * fem,
                                          height: 17.33 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-jc4.png',
                                            width: 17.22 * fem,
                                            height: 17.33 * fem,
                                          ),
                                        ),
                                        Container(
                                          // vectorYyE (1:507)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0.33 * fem, 7.04 * fem, 0 * fem),
                                          width: 17.22 * fem,
                                          height: 17.33 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-wZz.png',
                                            width: 17.22 * fem,
                                            height: 17.33 * fem,
                                          ),
                                        ),
                                        Container(
                                          // vector4gg (1:508)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0.33 * fem, 7.04 * fem, 0 * fem),
                                          width: 17.22 * fem,
                                          height: 17.33 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-tkx.png',
                                            width: 17.22 * fem,
                                            height: 17.33 * fem,
                                          ),
                                        ),
                                        Container(
                                          // vectorPix (1:509)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0.33 * fem, 0 * fem, 0 * fem),
                                          width: 17.22 * fem,
                                          height: 17.33 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-PNg.png',
                                            width: 17.22 * fem,
                                            height: 17.33 * fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // bookdescriptioniFS (1:501)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 162 * fem),
                                    child: Text(
                                      'Book Description',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 17.2593173981 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff315ed2),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // bookdescriptiond7W (1:502)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                                    child: Text(
                                      'Book Description',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 17.2593173981 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff315ed2),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // customerreviewswdz (1:503)
                                    'Customer Reviews',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 17.2593173981 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff315ed2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // authorbhawanshjangirpublishers (1:524)
                            left: 0 * fem,
                            bottom: 0,
                            // top: 385 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 278 * fem,
                                height: 189 * fem,
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 17.2593173981 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Author:',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 17.2593173981 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Bhawansh Jangir\n',
                                      ),
                                      TextSpan(
                                        text: 'Publisher:',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 17.2593173981 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ‎ Singh Publication\n',
                                      ),
                                      TextSpan(
                                        text: 'Language‏:',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 17.2593173981 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ‎ English\n',
                                      ),
                                      TextSpan(
                                        text: 'Paperback:',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 17.2593173981 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ‎ 900 pages\n',
                                      ),
                                      TextSpan(
                                        text: 'ISBN-10:',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 17.2593173981 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ‎ 9389432014\n',
                                      ),
                                      TextSpan(
                                        text: 'ISBN-13:',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 17.2593173981 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ‎ 978-9389432015\n',
                                      ),
                                      TextSpan(
                                        text: 'Reading age:',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 17.2593173981 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ‎ 13 years and up\n',
                                      ),
                                      TextSpan(
                                        text: 'Item Weight:',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 17.2593173981 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ‎ 450 g\n',
                                      ),
                                      TextSpan(
                                        text: 'Dimensions:',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 17.2593173981 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ‎ 20.3 x 25.4 x 4.7 cm',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogrouplgpvhix (7VJ4GcacWvRMu2wp99LGPV)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                      padding: EdgeInsets.fromLTRB(
                          16 * fem, 14 * fem, 16 * fem, 8 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff777777)),
                        color: Color(0x7fffffff),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupmjqyC9v (7VJ4XSVF2bvsWXCtTzmJqy)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2 * fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // bhawanshjangirjQk (1:527)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                  child: Text(
                                    'Bhawansh Jangir',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff777777),
                                    ),
                                  ),
                                ),
                                Container(
                                  // 3gL (1:528)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 2 * fem, 0 * fem),
                                  child: Text(
                                    '5',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xfff7941d),
                                    ),
                                  ),
                                ),
                                Container(
                                  // vectorNCp (1:541)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  width: 17.22 * fem,
                                  height: 17.33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-91z.png',
                                    width: 17.22 * fem,
                                    height: 17.33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // loremipsumdolorsitametconsecte (1:526)
                            constraints: BoxConstraints(
                              maxWidth: 340 * fem,
                            ),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Enim fermentum nunc molestie integer lacus.',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 13 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupx2qbUfA (7VJ4z6PVqSoKNdhHt7X2Qb)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                      padding: EdgeInsets.fromLTRB(
                          16 * fem, 14 * fem, 16 * fem, 8 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff777777)),
                        color: Color(0x7fffffff),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogrouplv3hei4 (7VJ5DLWRxQcriGzffdLV3H)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2 * fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // bhawanshjangirmng (1:531)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                  child: Text(
                                    'Bhawansh Jangir',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff777777),
                                    ),
                                  ),
                                ),
                                Container(
                                  // Hm2 (1:532)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 2 * fem, 0 * fem),
                                  child: Text(
                                    '5',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xfff7941d),
                                    ),
                                  ),
                                ),
                                Container(
                                  // vectorD8t (1:542)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  width: 17.22 * fem,
                                  height: 17.33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-2Gg.png',
                                    width: 17.22 * fem,
                                    height: 17.33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // loremipsumdolorsitametconsecte (1:530)
                            constraints: BoxConstraints(
                              maxWidth: 340 * fem,
                            ),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Enim fermentum nunc molestie integer lacus.',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 13 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogrouphushcB2 (7VJ5VViB1RyHpNNxmBhush)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                      padding: EdgeInsets.fromLTRB(
                          16 * fem, 14 * fem, 16 * fem, 8 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff777777)),
                        color: Color(0x7fffffff),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupjcroHnx (7VJ5faFiLxQtcKkwU2JCro)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2 * fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // bhawanshjangirpH6 (1:535)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                  child: Text(
                                    'Bhawansh Jangir',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff777777),
                                    ),
                                  ),
                                ),
                                Container(
                                  // KzY (1:536)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 2 * fem, 0 * fem),
                                  child: Text(
                                    '5',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xfff7941d),
                                    ),
                                  ),
                                ),
                                Container(
                                  // vector3vY (1:543)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  width: 17.22 * fem,
                                  height: 17.33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-PyA.png',
                                    width: 17.22 * fem,
                                    height: 17.33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // loremipsumdolorsitametconsecte (1:534)
                            constraints: BoxConstraints(
                              maxWidth: 340 * fem,
                            ),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Enim fermentum nunc molestie integer lacus.',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 13 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupcswf3JG (7VJ5w4ou8Jqry7adBECSWF)
                      padding: EdgeInsets.fromLTRB(
                          16 * fem, 14 * fem, 16 * fem, 8 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff777777)),
                        color: Color(0x7fffffff),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroup5whuvcx (7VJ669P74KuGe7cgoY5whu)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2 * fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // bhawanshjangirFv8 (1:539)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                  child: Text(
                                    'Bhawansh Jangir',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff777777),
                                    ),
                                  ),
                                ),
                                Container(
                                  // BYt (1:540)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 2 * fem, 0 * fem),
                                  child: Text(
                                    '5',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xfff7941d),
                                    ),
                                  ),
                                ),
                                Container(
                                  // vector5uA (1:544)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  width: 17.22 * fem,
                                  height: 17.33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-yPN.png',
                                    width: 17.22 * fem,
                                    height: 17.33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // loremipsumdolorsitametconsecte (1:538)
                            constraints: BoxConstraints(
                              maxWidth: 340 * fem,
                            ),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Enim fermentum nunc molestie integer lacus.',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 13 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
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
      )),
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
        active: 'home',
      ),
    );
  }
}
