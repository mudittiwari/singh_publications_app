// ignore_for_file: avoid_print, prefer_const_constructors, unnecessary_new

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/cart.dart';
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
      print("success");
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('pubuser', responseBody).then((value) {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Image(
                  image: AssetImage('assets/page-1/images/image-1.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
              child: Text(
                json.decode(widget.product)['title'],
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 24.2172622681 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff315ed2),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
              child: Text(
                json.decode(widget.product)['category'],
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 17.2593173981 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff777777),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    json.decode(widget.product)['subtitle'],
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 17.2600002289 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff777777),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      addtowishlist();
                    },
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffD1D1D1)),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                        ),
                        child: Icon(Icons.save, color: Color(0xffD1D1D1))),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
              child: Row(
                children: [
                  Text(
                    json.decode(widget.product)['rating'].toString(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.star,
                      color: Color(0xffFFC107),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.star,
                      color: Color(0xffFFC107),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.star,
                      color: Color(0xffFFC107),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.star,
                      color: Color(0xffFFC107),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.star,
                      color: Color(0xffFFC107),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.star,
                      color: Color(0xffFFC107),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      addtocart();
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xff315ED2)),
                      width: 150,
                      child: Center(
                        child: Text(
                          "Add to Cart",
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 21.5526294708 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xff315ED2)),
                      width: 120,
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 21.5526294708 * ffem,
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
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Text(
                "Book Description",
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 22.2172622681 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff315ed2),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
              child: Text(
                json.decode(widget.product)['description'],
                style: SafeGoogleFont(
                  'Inter',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Text(
                "Book Description",
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 22.2172622681 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff315ed2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: RichText(
                text: TextSpan(
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 17.2593173981 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Author:',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 17.2593173981 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: " " + json.decode(widget.product)['author'] + '\n',
                    ),
                    TextSpan(
                      text: 'Publisher:',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 17.2593173981 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text:
                          " " + json.decode(widget.product)['publisher'] + '\n',
                    ),
                    TextSpan(
                      text: 'Language‏:',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 17.2593173981 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text:
                          " " + json.decode(widget.product)['language'] + '\n',
                    ),
                    TextSpan(
                      text: 'Paperback:',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 17.2593173981 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: " " +
                          json.decode(widget.product)['paperback'].toString() +
                          '\n',
                    ),
                    TextSpan(
                      text: 'ISBN-10:',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 17.2593173981 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: " " + json.decode(widget.product)['isbn'] + '\n',
                    ),
                    TextSpan(
                      text: 'ISBN-13:',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 17.2593173981 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: " " + json.decode(widget.product)['isbn13'] + '\n',
                    ),
                    TextSpan(
                      text: 'Reading age:',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 17.2593173981 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: " " + json.decode(widget.product)['age'] + '\n',
                    ),
                    TextSpan(
                      text: 'Item Weight:',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 17.2593173981 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: " " + json.decode(widget.product)['weight'] + '\n',
                    ),
                    TextSpan(
                      text: 'Dimensions:',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 17.2593173981 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                    TextSpan(
                      text: " " +
                          json.decode(widget.product)['dimensions'] +
                          '\n',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomnavbar(
        active: 'home',
      ),
    );
  }
}
