// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/billing-address.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/shipping-address.dart';
import 'package:myapp/utils.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
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
            // accontsettingFuz (1:125)
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Color(0xffffffff),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // accountsettingXuS (1:132)
                  margin:
                      EdgeInsets.fromLTRB(90 * fem, 28 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    'Account Setting',
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
                  // autogroupdpiteUG (7VHNBBZ2qN9drgfR32dPiT)
                  padding: EdgeInsets.fromLTRB(
                      11 * fem, 18 * fem, 10 * fem, 30 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BillingAddress()),
                          );
                        },
                        child: Container(
                          // autogrouph5fqZr8 (7VHMPCseC4YpLnsKSgH5fq)
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
                            child: Text(
                              'Billing Address',
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
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShippingAddress()),
                          );
                        },
                        child: Container(
                          // autogroupqnkmqHr (7VHMYXwRyTTGo2jrqcqnKM)
                          width: double.infinity,
                          height: 53 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff777777)),
                            color: Color(0x7fffffff),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Shipping Address',
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
