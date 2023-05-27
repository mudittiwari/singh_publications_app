// ignore_for_file: prefer_const_constructors

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

class Bookcomp extends StatefulWidget {
  String product;
  Function callback;
  String? user;
  Bookcomp({
    super.key,
    required this.product,
    required this.user,
    required this.callback,
  });

  @override
  State<Bookcomp> createState() => _BookcompState();
}

class _BookcompState extends State<Bookcomp> {
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

  removefromwishlist(var id) async {
    showLoaderDialog(context);
    final uri = Uri.parse(
        'https://singhpublications.onrender.com/api/user/removefromwishlist?id=${json.decode(widget.user!)['id']}');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${json.decode(widget.user!)['accessToken']}'
    };
    Map<String, dynamic> body = {
      "product_id": id,
      // 'password': passwordController.text.trim()
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
    // print(responseBody);
    if (statusCode == 200) {
      Navigator.pop(context);
      var data = json.decode(responseBody);
      // print(data['wishlist']);
      data['accessToken'] = json.decode(widget.user!)['accessToken'];
      var finaldata = json.encode(data);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('pubuser', finaldata).then((value) {
        widget.callback();
      });
    } else {
      Navigator.pop(context);
      // print("not removed");
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.95;
    print(json.decode(widget.product)['image_url']);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
      width: double.infinity,
      height: 180,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF315ED2)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Image.network(
              json.decode(widget.product)['image_url'],
              width: 80,
              height: double.infinity,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    json.decode(widget.product)['title'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF315ED2),
                    ),
                  ),
                  Text(
                    json.decode(widget.product)['category'],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF777777),
                    ),
                  ),
                  Text(
                    json.decode(widget.product)['subtitle'],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        json.decode(widget.product)['rating'].toString(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF777777),
                        ),
                      ),
                      SizedBox(width: 5),
                      Image.asset(
                        'assets/page-1/images/star.png',
                        width: 16,
                      ),
                      Image.asset('assets/page-1/images/star.png', width: 16),
                      Image.asset('assets/page-1/images/star.png', width: 16),
                      Image.asset('assets/page-1/images/star.png', width: 16),
                      Image.asset('assets/page-1/images/star.png', width: 16),
                    ],
                  ),
                  Text(
                    '11 Jan 2023',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
            child: VerticalDivider(
              width: 1,
              color: Color(0xFF315ED2),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${json.decode(widget.product)['price']} Rs.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF315ED2),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    removefromwishlist(json.decode(widget.product)['id']);
                    // getitems();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF315ED2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                  ),
                  child: Text(
                    'Remove',
                    style: TextStyle(
                      fontSize: 14,
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
    );
  }
}

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  double baseWidth = 393;
  String? user;
  var products = <dynamic>[];
  int price = 0;
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

  Future<String> getStringFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('pubuser') ?? '';
  }

  getuser() async {
    String user = await getStringFromPrefs();
    setState(() {
      this.user = user;
    });
    getitems(); // return user;
  }

  getitems() async {
    showLoaderDialog(context);
    List<dynamic> products = [];
    try {
      for (var element in json.decode(user!)['wishlist']) {
        final uri = Uri.parse(
            'https://singhpublications.onrender.com/api/product/products?id=${element}');
        final headers = {'Content-Type': 'application/json'};
        Map<String, dynamic> body = {
          // 'email': emailController.text.trim(),
          // 'password': passwordController.text.trim()
        };
        String jsonBody = json.encode(body);
        final encoding = Encoding.getByName('utf-8');
        Response response = await get(
          uri,
          headers: headers,
          // body: jsonBody,
          // encoding: encoding,
        );
        int statusCode = response.statusCode;
        String responseBody = response.body;
        // print(responseBody);
        if (statusCode != 200) {
          print("error");
        } else {
          // print("success");
          products.add(responseBody);
          // print(products);
        }
      }
      // print(products);
      setState(() {
        this.products = products;
        Navigator.pop(context);
      });
    } catch (e) {
      Navigator.pop(context);
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
    double ffem = fem * 0.95;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // wishlistKwE (1:241)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: user != ''
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Text(
                          // wishlistCXA (1:297)
                          'Wishlist',
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
                        // autogroupdnsuTeY (7VHCSxmAYtfQg3LKTCdnsu)
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 27 * fem, 11 * fem, 21 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Bookcomp(
                                    product: products[index],
                                    callback: getuser,
                                    user: user,
                                  );
                                },
                                itemCount: products.length,
                              ),
                            )
                          ],
                        ),
                      ),
                      products.length == 0
                          ? Text(
                              "No Items in wishlist",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 20.8050193787 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff315ed2),
                              ),
                            )
                          : Text(""),
                    ],
                  )
                : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .6,
                    child: Center(
                      child: Text(
                        "Login to View Wishlist",
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
        active: 'wishlist',
      ),
    );
  }
}
