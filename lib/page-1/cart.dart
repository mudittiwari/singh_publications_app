// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:myapp/page-1/About.dart';
import 'package:myapp/page-1/Contact.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/delivery-address.dart';
import 'package:myapp/page-1/home.dart';
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

  removefromcart(var id) async {
    showLoaderDialog(context);
    final uri = Uri.parse(
        'https://singhpublications.onrender.com/api/user/removefromcart?id=${json.decode(widget.user!)['id']}');
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
                    removefromcart(json.decode(widget.product)['id']);
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

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  double baseWidth = 393;
  var products = <dynamic>[];
  int price = 0;
  String? user;
  Future<String> getStringFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('pubuser') ?? '';
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

  getuser() async {
    String user = await getStringFromPrefs();
    setState(() {
      this.user = user;
    });
    getitems(); // return user;
  }

  getitems() async {
    showLoaderDialog(context);
    setState(() {
      this.price = 0;
    });
    List<dynamic> products = [];
    for (var element in json.decode(user!)['cart']) {
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
        var price_ = json.decode(responseBody)['price'];
        setState(() {
          this.price = price_ + this.price;
        });
        // print("success");
        products.add(responseBody);
        print(products);
      }
    }
    // print(products);
    setState(() {
      this.products = products;
    });
    Navigator.pop(context);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text(
                  // wishlistCXA (1:297)
                  'Cart',
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
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 27 * fem, 11 * fem, 21 * fem),
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
                              user: user,
                              callback: getuser);
                        },
                        itemCount: products.length,
                      ),
                    )
                  ],
                ),
              ),
              products.length == 0
                  ? Text(
                      "No Items in Cart",
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20.8050193787 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff315ed2),
                      ),
                    )
                  : Text(""),
              Padding(
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 27 * fem, 11 * fem, 21 * fem),
                child: Container(
                  // group23ykU (1:85)
                  width: double.infinity,
                  height: 130 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // group12K3e (1:86)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              272 * fem, 15 * fem, 98.79 * fem, 17.99 * fem),
                          width: 372 * fem,
                          height: 130 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff315ed2)),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            // line1c2k (1:88)
                            child: SizedBox(
                              width: double.infinity,
                              height: 97.01 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff315ed2),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // group13wqi (1:89)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              272 * fem, 15 * fem, 98.79 * fem, 17.99 * fem),
                          width: 372 * fem,
                          height: 130 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff315ed2)),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            // line1qRJ (1:91)
                            child: SizedBox(
                              width: double.infinity,
                              height: 97.01 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff315ed2),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // group15PBv (1:92)
                        left: 79 * fem,
                        top: 15 * fem,
                        child: Container(
                          width: 254 * fem,
                          height: 65 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // iEC (1:93)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                child: Text(
                                  price.toString(),
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 32.7460823059 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff315ed2),
                                  ),
                                ),
                              ),
                              Container(
                                // vectorReQ (1:95)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 8 * fem, 130.52 * fem, 0 * fem),
                                width: 17.48 * fem,
                                height: 24.04 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/vector-ktG.png',
                                  width: 17.48 * fem,
                                  height: 24.04 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        // line15bE (1:75)
                        left: 272 * fem,
                        top: 15 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 1.21 * fem,
                            height: 97.01 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff315ed2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // itemsGQ8 (1:99)
                        left: 305 * fem,
                        top: 45 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 34 * fem,
                            height: 54 * fem,
                            child: Column(
                              children: [
                                Text(
                                  products.length.toString(),
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 32.7460823059 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff315ed2),
                                  ),
                                ),
                                Text(
                                  'Items',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 12.2032423019 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff315ed2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle38NTA (1:100)
                        left: 65 * fem,
                        top: 72 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 126 * fem,
                            height: 36.65 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(33.7607650757 * fem),
                                color: Color(0xff315ed2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // buynowHKE (1:101)
                        left: 85 * fem,
                        top: 77 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 86 * fem,
                            height: 25 * fem,
                            child: GestureDetector(
                              onTap: () {
                                if (products.length > 0) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Deliveryaddress(
                                        price: price,
                                      ),
                                    ),
                                  );
                                } else {
                                  showmessage(context, "No items in cart");
                                }
                              },
                              child: Text(
                                'Buy Now',
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
        ],
      )),
      bottomNavigationBar: bottomnavbar(
        active: 'cart',
      ),
    );
  }
}
