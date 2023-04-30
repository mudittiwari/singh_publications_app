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
        // otp1kk (1:826)
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(11 * fem, 27 * fem, 10 * fem, 78.35 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
            // color: Color(0xffffffff),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    // image175XUC (1:829)
                    margin: EdgeInsets.fromLTRB(
                        11 * fem, 0 * fem, 0 * fem, 2.09 * fem),
                    width: 151 * fem,
                    height: 158.91 * fem,
                    child: Image.asset(
                      'assets/page-1/images/image-175-F3v.png',
                    ),
                  ),
                  Container(
                    // singhpublicationFQC (1:828)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 50 * fem),
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
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    // autogrouprfcfxpQ (7VJeKZ1Y5VrXE7VJXdRfcf)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 19 * fem),
                    width: double.infinity,
                    height: 53 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff777777)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(20 * fem),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter OTP',
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
                  ),
                  Container(
                    // autogroupycsvDkL (7VJeRJLxfAJdAbiKEAyCsV)
                    margin: EdgeInsets.fromLTRB(
                        123 * fem, 0 * fem, 123 * fem, 0 * fem),
                    width: double.infinity,
                    height: 36.65 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff315ed2),
                      borderRadius: BorderRadius.circular(33.7607650757 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Verify',
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
            )
          ],
        ),
      ),
    );
  }
}
