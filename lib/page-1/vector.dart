import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 37.0093383789;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // vectorAye (1:846)
        width: double.infinity,
        height: 27 * fem,
        child: Image.asset(
          'assets/page-1/images/vector-YiL.png',
          width: 37.01 * fem,
          height: 27 * fem,
        ),
      ),
    );
  }
}
