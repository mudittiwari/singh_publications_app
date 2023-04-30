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
        // registrationWYg (1:764)
        padding: EdgeInsets.fromLTRB(13 * fem, 27 * fem, 8 * fem, 78.35 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // image177bq2 (1:779)
              margin:
                  EdgeInsets.fromLTRB(7 * fem, 0 * fem, 0 * fem, 2.09 * fem),
              width: 250 * fem,
              height: 250 * fem,
              child: Image.asset(
                'assets/page-1/images/image-177-XqJ.png',
              ),
            ),
            Container(
              // singhpublication7YU (1:778)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 50 * fem),
              child: Text(
                'Singh Publication',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 31.6666660309 * ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff315ed2),
                ),
              ),
            ),
            Container(
              // autogroupg4nf1Nx (7VJZnGQa4y9gj6TVNgg4nf)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'First Name',
                    hintStyle: SafeGoogleFont(
                      'Inter',
                      fontSize: 20.1037635803 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff777777),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // autogrouptw5mewi (7VJZzm3kdoS5j2FRrJTw5m)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Last Name',
                    hintStyle: SafeGoogleFont(
                      'Inter',
                      fontSize: 20.1037635803 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff777777),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // autogrouptfesKHA (7VJaTkGnaUmFxnX8xbTFEs)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email Address',
                    hintStyle: SafeGoogleFont(
                      'Inter',
                      fontSize: 20.1037635803 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff777777),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // autogrouppnapysW (7VJaafEw8ZpvD3yiakpNaP)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Gender',
                    hintStyle: SafeGoogleFont(
                      'Inter',
                      fontSize: 20.1037635803 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff777777),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // autogroupbvuufEY (7VJahaD5getaTKSJCvBVuu)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Birth Date',
                    hintStyle: SafeGoogleFont(
                      'Inter',
                      fontSize: 20.1037635803 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff777777),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // autogroupbvuufEY (7VJahaD5getaTKSJCvBVuu)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Mobile Number',
                    hintStyle: SafeGoogleFont(
                      'Inter',
                      fontSize: 20.1037635803 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff777777),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // autogroupbvuufEY (7VJahaD5getaTKSJCvBVuu)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: SafeGoogleFont(
                      'Inter',
                      fontSize: 20.1037635803 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff777777),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // autogroupze6o888 (7VJapQM2xHLZ7Ax3uXzE6o)
              margin:
                  EdgeInsets.fromLTRB(121 * fem, 0 * fem, 125 * fem, 0 * fem),
              width: double.infinity,
              height: 36.65 * fem,
              decoration: BoxDecoration(
                color: Color(0xff315ed2),
                borderRadius: BorderRadius.circular(33.7607650757 * fem),
              ),
              child: Center(
                child: Text(
                  'Login',
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
    );
  }
}
