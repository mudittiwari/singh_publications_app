// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:convert';

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

class BookComp extends StatelessWidget {
  dynamic order;

  BookComp({required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      height: 200.0,
      width: MediaQuery.of(context).size.width * .8,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF315ED2), width: 1.0),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8),
        child: Row(
          children: [
            Expanded(
              child: ListView.builder(
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: order['items'].length,
                  itemBuilder: (context, index) {
                    var item = order['items'][index];
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            item['image_url'],
                            height: 160,
                          ),
                          SizedBox(width: 8.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  item['title'],
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF315ED2),
                                  ),
                                ),
                                Text(
                                  item['subtitle'],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFF777777),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      item['rating'].toString(),
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF777777),
                                      ),
                                    ),
                                    SizedBox(width: 4.0),
                                    Image.asset(
                                      'assets/page-1/images/star.png',
                                      width: 16.0,
                                      height: 16.0,
                                    ),
                                    Image.asset(
                                      'assets/page-1/images/star.png',
                                      width: 16.0,
                                      height: 16.0,
                                    ),
                                    Image.asset(
                                      'assets/page-1/images/star.png',
                                      width: 16.0,
                                      height: 16.0,
                                    ),
                                    Image.asset(
                                      'assets/page-1/images/star.png',
                                      width: 16.0,
                                      height: 16.0,
                                    ),
                                    Image.asset(
                                      'assets/page-1/images/star.png',
                                      width: 16.0,
                                      height: 16.0,
                                    ),
                                  ],
                                ),
                                Text(
                                  '11 Jan 2023',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFF777777),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
              child: VerticalDivider(
                width: 1,
                color: Color(0xFF315ED2),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${order["price"]} Rs.',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF315ED2),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF315ED2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    child: Text(
                      'Invoice',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Orderdetails extends StatefulWidget {
  dynamic order;
  Orderdetails({super.key, required this.order});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
  String? user;
  double baseWidth = 393;
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
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Text(
              // wishlistCXA (1:297)
              'Order Details',
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
              width: MediaQuery.of(context).size.width,
              child: BookComp(order: json.decode(widget.order))),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF777777), width: 1.0),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Delivery Status',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF777777),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    '|',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF777777),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    json.decode(widget.order)['status'],
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF315ED2),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '13 Jan 2023',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF777777),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Text(
              'Add Review',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF315ED2),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            width: MediaQuery.of(context).size.width * .9,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF777777), width: 1.0),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Review',
              ),
              maxLines: 6,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/page-1/images/star.png',
                width: 32.0,
                height: 32.0,
              ),
              Image.asset(
                'assets/page-1/images/star.png',
                width: 32.0,
                height: 32.0,
              ),
              Image.asset(
                'assets/page-1/images/star.png',
                width: 32.0,
                height: 32.0,
              ),
              Image.asset(
                'assets/page-1/images/star.png',
                width: 32.0,
                height: 32.0,
              ),
              Image.asset(
                'assets/page-1/images/star.png',
                width: 32.0,
                height: 32.0,
              ),
            ],
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF315ED2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(
              'Submit',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )),
      bottomNavigationBar: bottomnavbar(
        active: 'user',
      ),
    );
  }
}
