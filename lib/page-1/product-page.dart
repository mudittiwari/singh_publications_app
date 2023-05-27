// ignore_for_file: avoid_print, prefer_const_constructors, unnecessary_new

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
import 'package:myapp/page-1/cart.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/registration.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Product extends StatefulWidget {
  String product;
  Product({super.key, required this.product});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  double baseWidth = 393;
  String? user;
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

  showmessage(BuildContext context, String message) {
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

  Future<String> getStringFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('pubuser') ?? '';
  }

  getuser() async {
    String user = await getStringFromPrefs();
    // print(user);
    setState(() {
      this.user = user;
    });
    // return user;
  }

  addtocart() async {
    // print(json.decode(user!)['accessToken']);
    showLoaderDialog(context);
    final uri = Uri.parse(
        'https://singhpublications.onrender.com/api/user/addtocart?id=${json.decode(user!)['id']}');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${json.decode(user!)['accessToken']}'
    };
    Map<String, dynamic> body = {
      "product_id": json.decode(widget.product)['id'],
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
    Navigator.pop(context);
    if (responseBody == '"product already in cart"') {
      showmessage(context, "Product already in cart");
    } else if (statusCode != 200) {
      print("error");
      showmessage(context, "error");
    } else {
      print("success");
      var data = json.decode(responseBody);
      // print(data['wishlist']);
      data['accessToken'] = json.decode(user!)['accessToken'];
      var finaldata = json.encode(data);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('pubuser', finaldata).then((value) async {
        showmessage(context, "Product added to cart");
      });
    }
  }

  addtowishlist() async {
    showLoaderDialog(context);
    final uri = Uri.parse(
        'https://singhpublications.onrender.com/api/user/addtowishlist?id=${json.decode(user!)['id']}');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${json.decode(user!)['accessToken']}'
    };
    Map<String, dynamic> body = {
      "product_id": json.decode(widget.product)['id'],
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
    Navigator.pop(context);
    print(responseBody);
    if (responseBody == '"product already in wishlist"') {
      showmessage(context, "Product already in wishlist");
    } else if (statusCode != 200) {
      print("error");
      showmessage(context, "error");
    } else {
      var data = json.decode(responseBody);
      data['accessToken'] = json.decode(user!)['accessToken'];
      var finaldata = json.encode(data);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('pubuser', finaldata).then((value) async {
        showmessage(context, "Product added to wishlist");
      });
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Color(0xFF777777),
                  width: 1.0,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    json.decode(widget.product)['image_url'],
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    json.decode(widget.product)['title'],
                    style: TextStyle(
                      color: Color(0xFF315ED2),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  json.decode(widget.product)['category'],
                  style: TextStyle(
                    color: Color(0xFF777777),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  json.decode(widget.product)['subtitle'],
                  style: TextStyle(
                    color: Color(0xFF777777),
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      json.decode(widget.product)['rating'].toString(),
                      style: TextStyle(
                        color: Color(0xFF777777),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Image.asset(
                      'assets/page-1/images/star.png',
                      width: 16.0,
                    ),
                    Image.asset(
                      'assets/page-1/images/star.png',
                      width: 16.0,
                    ),
                    Image.asset(
                      'assets/page-1/images/star.png',
                      width: 16.0,
                    ),
                    Image.asset(
                      'assets/page-1/images/star.png',
                      width: 16.0,
                    ),
                    Image.asset(
                      'assets/page-1/images/star.png',
                      width: 16.0,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (user == "") {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Login();
                            }));
                          } else
                            addtocart();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF315ED2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (user == "") {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Login();
                            }));
                          } else
                            addtowishlist();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF315ED2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Text(
                          "Add to Wishlist",
                          style: TextStyle(
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
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book Description",
                  style: TextStyle(
                    color: Color(0xFF315ED2),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  json.decode(widget.product)['description'],
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Book Details",
                  style: TextStyle(
                    color: Color(0xFF315ED2),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Author:",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Publisher:",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Language:",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Paperback:",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "ISBN:",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "ISBN13:",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Age Limit:",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Dimensions:",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Weight:",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          json.decode(widget.product)['author'],
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          json.decode(widget.product)['publisher'],
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          json.decode(widget.product)['language'],
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          json.decode(widget.product)['paperback'].toString(),
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          json.decode(widget.product)['isbn'],
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          json.decode(widget.product)['isbn13'],
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          json.decode(widget.product)['age'],
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          " " + json.decode(widget.product)['dimensions'],
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          json.decode(widget.product)['weight'],
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  "Customer Reviews",
                  style: TextStyle(
                    color: Color(0xFF315ED2),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: bottomnavbar(
        active: 'home',
      ),
    );
  }
}
