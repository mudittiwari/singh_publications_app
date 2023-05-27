// ignore_for_file: use_build_context_synchronously, unnecessary_new

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/About.dart';
import 'package:myapp/page-1/Contact.dart';
import 'package:myapp/page-1/Resetpassword.dart';
import 'package:myapp/page-1/accont-setting.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/orders.dart';
import 'package:myapp/page-1/profile-setting.dart';
import 'package:myapp/page-1/registration.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  double baseWidth = 393;
  FirebaseAuth auth = FirebaseAuth.instance;
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

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showlogoutmessage(BuildContext context, String message) {
    AlertDialog alert = AlertDialog(
      contentPadding: EdgeInsets.only(top: 12, left: 4),
      content: Container(
        height: 79,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 79,
                margin: EdgeInsets.only(left: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Do you want to logout?"),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(
                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextButton(
                              child: new Text("Yes"),
                              onPressed: () {
                                Navigator.of(context).pop();
                                showLoaderDialog(context);
                                auth.signOut().then((value) async {
                                  Navigator.pop(context);
                                  final SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.remove('pubuser');
                                  Navigator.pushAndRemoveUntil(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return Home();
                                    },
                                  ), (route) => false);
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => Home()),
                                  // );
                                });
                              },
                            ),
                            TextButton(
                              child: new Text("No"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
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
            // profilev1N (1:639)
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Color(0xffffffff),
                ),
            child: user != ''
                ? Column(
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
                                  MaterialPageRoute(
                                      builder: (context) => Orders()),
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
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                // autogroupyqebjgt (7VJLrPT4FeLr2D6f32Yqeb)
                                margin: EdgeInsets.fromLTRB(
                                    123 * fem, 0 * fem, 123 * fem, 0 * fem),
                                width: double.infinity,
                                height: 36.65 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xff315ed2),
                                  borderRadius: BorderRadius.circular(
                                      33.7607650757 * fem),
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .6,
                    child: Center(
                      child: Text(
                        "Login to View Profile",
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 25.8050193787 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff315ed2),
                        ),
                      ),
                    ),
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
