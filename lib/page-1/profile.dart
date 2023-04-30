import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/accont-setting.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/orders.dart';
import 'package:myapp/page-1/profile-setting.dart';
import 'package:myapp/utils.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            // profilev1N (1:639)
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Color(0xffffffff),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupm4zhQUG (7VJMnhDuGqTvsPRNwnm4ZH)
                  padding: EdgeInsets.fromLTRB(
                      11 * fem, 28 * fem, 10 * fem, 44.35 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileSettings()),
                          );
                        },
                        child: Container(
                          // autogroupnx6bizk (7VJL5F5cSvtrSSkpg7nX6B)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          padding: EdgeInsets.fromLTRB(
                              23 * fem, 14 * fem, 23 * fem, 14 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff777777)),
                            color: Color(0x7fffffff),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Text(
                            'Profile Setting',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 20.1037635803 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff999999),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountSettings()),
                          );
                        },
                        child: Container(
                          // autogroup39dmNZW (7VJLMEcxw31vMiFTvb39dM)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          padding: EdgeInsets.fromLTRB(
                              23 * fem, 14 * fem, 23 * fem, 14 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff777777)),
                            color: Color(0x7fffffff),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Text(
                            'Account Setting',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 20.1037635803 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff999999),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupjd7rE5v (7VJLaPuhmYDn6wc1nZJD7R)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 14 * fem, 23 * fem, 14 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff777777)),
                          color: Color(0x7fffffff),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Text(
                          'E-Books',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 20.1037635803 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff999999),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Orders()),
                          );
                        },
                        child: Container(
                          // autogroupqkrm5sE (7VJLiyVjzob6DTy7sbqKRM)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 65 * fem),
                          padding: EdgeInsets.fromLTRB(
                              23 * fem, 14 * fem, 23 * fem, 14 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff777777)),
                            color: Color(0x7fffffff),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Text(
                            'Orders',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 20.1037635803 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff999999),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupyqebjgt (7VJLrPT4FeLr2D6f32Yqeb)
                        margin: EdgeInsets.fromLTRB(
                            123 * fem, 0 * fem, 123 * fem, 0 * fem),
                        width: double.infinity,
                        height: 36.65 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff315ed2),
                          borderRadius:
                              BorderRadius.circular(33.7607650757 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Log Out',
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
        active: 'user',
      ),
    );
  }
}
