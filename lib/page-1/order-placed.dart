import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/About.dart';
import 'package:myapp/page-1/Contact.dart';
import 'package:myapp/page-1/Resetpassword.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/registration.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Orderplaced extends StatefulWidget {
  const Orderplaced({super.key});

  @override
  State<Orderplaced> createState() => _OrderplacedState();
}

class _OrderplacedState extends State<Orderplaced> {
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // orderplaced2ME (1:223)
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Color(0xffffffff),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupt92bXqi (7VHXffEoJ88E9D2BJ5T92b)
                  padding: EdgeInsets.fromLTRB(
                      31 * fem, 18 * fem, 31 * fem, 50 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroup6gb5rNC (7VHX8bJESxebqDRyx86Gb5)
                        margin: EdgeInsets.fromLTRB(
                            57 * fem, 0 * fem, 57 * fem, 34 * fem),
                        padding: EdgeInsets.fromLTRB(
                            56 * fem, 69 * fem, 56 * fem, 67.54 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff25b83c),
                          borderRadius: BorderRadius.circular(108.5 * fem),
                        ),
                        child: Center(
                          // vectorMZr (1:238)
                          child: SizedBox(
                            width: 105 * fem,
                            height: 80.46 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-XRJ.png',
                              width: 105 * fem,
                              height: 80.46 * fem,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // congratulationsVAG (1:235)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 12 * fem, 17 * fem),
                        child: Text(
                          'Congratulations!',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 26.8099994659 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff315ed2),
                          ),
                        ),
                      ),
                      Container(
                        // orderplacedsucessfullyoRr (1:236)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 40 * fem),
                        child: Text(
                          'Order Placed Sucessfully',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 26.8099994659 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff315ed2),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupgzx5uDz (7VHXFqbA8tAzT8fsGTgzX5)
                        margin: EdgeInsets.fromLTRB(
                            111 * fem, 0 * fem, 110 * fem, 0 * fem),
                        width: double.infinity,
                        height: 37 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff315ed2),
                          borderRadius:
                              BorderRadius.circular(33.7607650757 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Orders',
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
      bottomNavigationBar: bottomnavbar(
        active: 'cart',
      ),
    );
  }
}
