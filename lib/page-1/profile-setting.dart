import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:myapp/page-1/About.dart';
import 'package:myapp/page-1/Contact.dart';
import 'package:myapp/page-1/Resetpassword.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/registration.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  double baseWidth = 393;
  TextEditingController firstname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController lastname = TextEditingController();
  String? user;
  Future<String> getStringFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('pubuser') ?? '';
  }

  getuser() async {
    String user = await getStringFromPrefs();
    setState(() {
      this.user = user;
      this.firstname.text = json.decode(user)['firstname'];
      this.lastname.text = json.decode(user)['lastname'];
      this.email.text = json.decode(user)['email'];
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

  updateuser() async {
    showLoaderDialog(context);
    final uri = Uri.parse(
        'https://singhpublications.onrender.com/api/user/updateuser?id=${json.decode(user!)['id']}');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${json.decode(user!)['accessToken']}'
    };
    Map<String, dynamic> body = {
      "firstname": firstname.text,
      "lastname": lastname.text,
      "email": email.text,
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
      var data = json.decode(responseBody);
      // print(data['wishlist']);
      data['accessToken'] = json.decode(user!)['accessToken'];
      var finaldata = json.encode(data);
      print(finaldata);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('pubuser', finaldata).then((value) {
        Navigator.pop(context);
        showMessageDialog(context, "Profile Updated Successfully");
      });
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
                              controller: firstname,
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
                              controller: lastname,
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
                              controller: email,
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
                      GestureDetector(
                        onTap: () {
                          updateuser();
                        },
                        child: Container(
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
