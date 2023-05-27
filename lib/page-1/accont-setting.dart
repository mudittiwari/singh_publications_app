// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/About.dart';
import 'package:myapp/page-1/Contact.dart';
import 'package:myapp/page-1/Resetpassword.dart';
import 'package:myapp/page-1/billing-address.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/registration.dart';
import 'package:myapp/page-1/shipping-address.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  double baseWidth = 393;
  String? user;
  Future<String> getStringFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('pubuser') ?? '';
  }

  getuser() async {
    String user = await getStringFromPrefs();
    setState(() {
      this.user = user;
    });
    // return user;
  }

  @override
  void initState() {
    super.initState();
    getuser();
  }

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
        iconTheme: IconThemeData(color: Color(0xff315ED2)),
        // leading: Icon(Icons.menu, color: Color(0xff315ED2)),
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 5.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Image(image: AssetImage('assets/page-1/images/logo.png')),
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.symmetric(vertical: 50),
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Contact();
              }));
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return About();
              }));
            },
          ),
          user != ""
              ? ListTile(
                  title: const Text('Reset Password'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Resetpassword();
                    }));
                  },
                )
              : Text(""),
          user == ""
              ? Container(
                  height: MediaQuery.of(context).size.height * 1.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF315ED2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 28,
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Signup();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF315ED2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 28,
                          ),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Text("")
        ],
      )),
      bottomNavigationBar: bottomnavbar(
        active: 'user',
      ),
    );
  }
}
