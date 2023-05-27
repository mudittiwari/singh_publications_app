// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:myapp/page-1/About.dart';
import 'package:myapp/page-1/Contact.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/registration.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  double baseWidth = 393;
  TextEditingController oldpasswordController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();
  String? user;
  FirebaseAuth auth = FirebaseAuth.instance;
  var products = [];
  Future<String> getStringFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('pubuser') ?? '';
  }

  getuser() async {
    String user = await getStringFromPrefs();
    print(user);
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

  showMessageDialog(BuildContext context, String message) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          Container(margin: EdgeInsets.only(left: 7), child: Text(message)),
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

  updatepassword() async {
    showLoaderDialog(context);
    final uri = Uri.parse(
        'https://singhpublications.onrender.com/api/user/updatepassword?id=${json.decode(user!)['id']}');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${json.decode(user!)['accessToken']}'
    };
    Map<String, dynamic> body = {
      "oldpassword": oldpasswordController.text.trim(),
      "newpassword": newpasswordController.text.trim(),
    };
    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');
    Response response = await post(
      uri,
      headers: headers,
      body: jsonBody,
      encoding: encoding,
    );
    int statusCode = response.statusCode;
    String responseBody = response.body;
    print(responseBody);
    if (statusCode == 200) {
      Navigator.pop(context);
      // showMessageDialog(context, "Password Updated");
      auth.signOut().then((value) async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.remove('pubuser');
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
          builder: (context) {
            return Login();
          },
        ), (route) => false);
      });

      // print("removed");
    } else {
      Navigator.pop(context);
      showMessageDialog(context, "Something went wrong");
      // print("not removed");
    }
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
          ListTile(
            title: const Text('Reset Password'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Resetpassword();
              }));
            },
          ),
          user == ""
              ? Row(
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
                )
              : Text("")
        ],
      )),
      body: SingleChildScrollView(
          // ignore: sized_box_for_whitespace
          child: Container(
        width: double.infinity,
        child: Container(
          // loginpyn (1:816)
          padding:
              EdgeInsets.fromLTRB(11 * fem, 27 * fem, 10 * fem, 78.35 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // shippingaddressZa8 (1:798)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 21 * fem),
                child: Text(
                  'Reset Password',
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
                // autogroupfx791Rz (7VJdujMtvFuHY38zW1fX79)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 20 * fem, 0 * fem, 19 * fem),
                width: double.infinity,
                height: 53 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff777777)),
                  color: Color(0x7fffffff),
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Center(
                  child: Padding(
                    // ignore: unnecessary_const
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      obscureText: true,
                      controller: oldpasswordController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Old Password ',
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
                // autogroupfx791Rz (7VJdujMtvFuHY38zW1fX79)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
                width: double.infinity,
                height: 53 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff777777)),
                  color: Color(0x7fffffff),
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Center(
                  child: Padding(
                    // ignore: unnecessary_const
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      obscureText: true,
                      controller: newpasswordController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'New Password ',
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
              GestureDetector(
                onTap: () {
                  updatepassword();
                },
                child: Container(
                  // autogroupytmvUKa (7VJe19NYN5tf6sahWNyTmV)
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
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: bottomnavbar(
        active: 'none',
      ),
    );
  }
}
