import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/utils.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
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
            // profilesettingGg8 (1:104)
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .7,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Text(
                    // profilesettingg16 (1:111)
                    'Profile Setting',
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
                  // autogroupbnwp1ZA (7VHLEzGybFT7eaNSX7BnWP)
                  padding: EdgeInsets.fromLTRB(
                      11 * fem, 18 * fem, 10 * fem, 30 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroup9ya78tg (7VHKLM82FEdgfexF5E9Ya7)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 8 * fem),
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
                      ),
                      Container(
                        // autogrouplzs7CNk (7VHKaqhsd5gTuVS1huLzS7)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 8 * fem),
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
                      ),
                      Container(
                        // autogroup4wfmTpU (7VHKiFfBsvSDiEZYsL4WfM)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 23 * fem),
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
                      ),
                      Container(
                        // autogrouptelt89v (7VHKqv75z932JDXZoPTELT)
                        margin: EdgeInsets.fromLTRB(
                            121 * fem, 0 * fem, 125 * fem, 0 * fem),
                        width: double.infinity,
                        height: 36.65 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff315ed2),
                          borderRadius:
                              BorderRadius.circular(33.7607650757 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Submit',
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
