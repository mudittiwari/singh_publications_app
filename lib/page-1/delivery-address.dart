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
        // deliveryaddressWY8 (1:193)
        width: double.infinity,
        decoration: BoxDecoration(
            // color: Color(0xffffffff),
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              // deliveryaddresszVE (1:205)
              'Delivery Address',
              style: SafeGoogleFont(
                'Inter',
                fontSize: 26.8099994659 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2125 * ffem / fem,
                color: Color(0xff315ed2),
              ),
            ),
            Container(
              // autogroup5qhvXk4 (7VHVF9SbZzFcCjLGuA5qHV)
              padding:
                  EdgeInsets.fromLTRB(11 * fem, 17 * fem, 10 * fem, 62 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupkzbz4EC (7VHUipynGxK8ETFWs6kZBZ)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 34 * fem),
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 12 * fem, 16 * fem, 10 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff777777)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(20 * fem),
                    ),
                    child: Align(
                      // houseplotno355wondermallstreet (1:207)
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: 272 * fem,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'House/Plot No:',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                ),
                                TextSpan(
                                  text: '355, Wondermall\n',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Street/Landmark:',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: ' Company Garden\n',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: 'City:',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: ' Alwar\n',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Pincode:',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: ' 301001',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupsv5dXjN (7VHUqVTLyfXjhUscidSV5D)
                    margin: EdgeInsets.fromLTRB(
                        80 * fem, 0 * fem, 80 * fem, 0 * fem),
                    width: double.infinity,
                    height: 37 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff315ed2),
                      borderRadius: BorderRadius.circular(33.7607650757 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Place your Order',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
