import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 703;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // user3bv (1:750)
        width: double.infinity,
        height: 384*fem,
        child: Text(
          'User',
          style: SafeGoogleFont (
            'Inter',
            fontSize: 316.5289306641*ffem,
            fontWeight: FontWeight.w400,
            height: 1.2125*ffem/fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
          );
  }
}