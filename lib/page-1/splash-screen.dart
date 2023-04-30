import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // splashscreenbG4 (1:751)
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Container(
          // group37jdA (1:752)
          width: 395.26 * fem,
          height: double.infinity,
          // height: 990 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupxkzwMuS (7VJYysaD1NUTF8wGAcXkzw)
                margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 394.26 * fem,
                height: 246 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle26sct (1:753)
                      left: 0 * fem,
                      top: 53 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 394.26 * fem,
                          height: 124 * fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-26.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle33zBi (1:754)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 394.26 * fem,
                          height: 124 * fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-33.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // rectangle27hM2 (1:755)
                margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 394.26 * fem,
                height: 124 * fem,
                child: Image.asset(
                  'assets/page-1/images/rectangle-27.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // autogroupn5xrRXv (7VJZ7TBuq8TaEhxTB8N5XR)
                margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 394.26 * fem,
                height: 248 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle28YcY (1:756)
                      left: 0.0000610352 * fem,
                      top: 124 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 394.26 * fem,
                          height: 124 * fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-28.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle29fBN (1:757)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 394.26 * fem,
                          height: 124 * fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-29.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // singhpublicationnFz (1:762)
                      left: 59 * fem,
                      top: 187 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 275 * fem,
                          height: 39 * fem,
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
                      ),
                    ),
                    Positioned(
                      // image175GBA (1:763)
                      left: 127 * fem,
                      top: 26 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 151 * fem,
                          height: 158.91 * fem,
                          child: Image.asset(
                            'assets/page-1/images/image-175.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // rectangle30PFn (1:758)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
                width: 394.26 * fem,
                height: 124 * fem,
                child: Image.asset(
                  'assets/page-1/images/rectangle-30.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // rectangle31WLQ (1:759)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
                width: 394.26 * fem,
                height: 124 * fem,
                child: Image.asset(
                  'assets/page-1/images/rectangle-31.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // rectangle32dA8 (1:760)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
                width: 394.26 * fem,
                height: 124 * fem,
                child: Image.asset(
                  'assets/page-1/images/rectangle-32.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
